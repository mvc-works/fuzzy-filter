
{} (:package |fuzzy-filter)
  :configs $ {} (:init-fn |fuzzy-filter.main/main!) (:reload-fn |fuzzy-filter.main/reload!)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
    :version |0.0.6
  :files $ {}
    |fuzzy-filter.comp.visual $ {}
      :ns $ quote
        ns fuzzy-filter.comp.visual $ :require
          [] hsl.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp cursor-> list-> <> div button textarea span input pre
          [] respo.comp.space :refer $ [] =<
      :defs $ {}
        |comp-visual $ quote
          defcomp comp-visual (pieces options)
            list->
              {} $ :style
                {} $ :display :inline-block
              -> pieces $ map-indexed
                fn (idx chunk)
                  [] idx $ span
                    {}
                      :inner-text $ last chunk
                      :style $ merge (:style-base options)
                        if
                          = :hit $ first chunk
                          merge
                            {} $ :font-weight :bold
                            :style-hit options
                          :style-rest options
    |fuzzy-filter.comp.container $ {}
      :ns $ quote
        ns fuzzy-filter.comp.container $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp >> <> div button textarea span input pre code
          [] respo.comp.space :refer $ [] =<
          [] reel.comp.reel :refer $ [] comp-reel
          [] respo-md.comp.md :refer $ [] comp-md
          [] fuzzy-filter.config :refer $ [] dev?
          [] fuzzy-filter.core :refer $ [] parse-by-letter parse-by-word
          [] fuzzy-filter.comp.visual :refer $ [] comp-visual
      :defs $ {}
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
              div
                {} $ :style
                  merge ui/global ui/column $ {} (:padding 16)
                div ({})
                  div ({})
                    input $ {} (:style ui/input)
                      :value $ :content store
                      :placeholder "\"text"
                      :on-input $ fn (e d! m!)
                        d! :content $ :value e
                  =< nil 8
                  div ({})
                    input $ {} (:style ui/input)
                      :value $ :query store
                      :placeholder "\"query"
                      :on-input $ fn (e d! m!)
                        d! :query $ :value e
                let
                    result $ parse-by-letter (:content store) (:query store)
                    word-result $ parse-by-word (:content store) (:query store)
                  div ({})
                    pre
                      {} $ :style
                        {} $ :font-family ui/font-code
                      code ({})
                        <> $ .trim (format-cirru-edn result)
                    pre
                      {} $ :style
                        {} $ :font-family ui/font-code
                      code ({})
                        <> $ .trim (format-cirru-edn word-result)
                    when (:matches? result)
                      div ({})
                        comp-visual (:chunks result)
                          {} $ :style-rest
                            {} $ :color (hsl 0 0 70)
                    when (:matches? word-result)
                      div ({})
                        comp-visual (:chunks word-result)
                          {} $ :style-rest
                            {} $ :color (hsl 0 0 70)
                when dev? $ comp-reel (>> states :reel) reel ({})
    |fuzzy-filter.updater $ {}
      :ns $ quote
        ns fuzzy-filter.updater $ :require
          [] respo.cursor :refer $ [] update-states
      :defs $ {}
        |updater $ quote
          defn updater (store op op-data op-id op-time)
            case-default op
              do (println "\"Unknown op:" op) store
              :states $ update-states store op-data
              :content $ assoc store :content op-data
              :query $ assoc store :query op-data
              :hydrate-storage op-data
    |fuzzy-filter.config $ {}
      :ns $ quote
        ns fuzzy-filter.config $ :require
          [] fuzzy-filter.util :refer $ [] get-env!
      :defs $ {}
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode")
        |site $ quote
          def site $ {} (:storage "\"fuzzy-filter") (:dev-ui "\"http://localhost:8100/main.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main.css") (:cdn-url "\"http://cdn.tiye.me/fuzzy-filter/") (:cdn-folder "\"tiye.me:cdn/fuzzy-filter") (:title "\"Fuzzy Filter") (:icon "\"http://cdn.tiye.me/logo/mvc-works.png") (:upload-folder "\"tiye.me:repo/mvc-works/fuzzy-filter/")
        |bundle-builds $ quote
          def bundle-builds $ #{} "\"release" "\"local-bundle"
    |fuzzy-filter.core $ {}
      :ns $ quote
        ns fuzzy-filter.core $ :require ([] clojure.string :as string)
      :defs $ {}
        |parse-by-letter $ quote
          defn parse-by-letter (text query)
            let
                results $ conflate-chunks
                  parse-by-letter-iter ([]) (.split text "\"") (.split query "\"")
              {}
                :matches? $ not
                  any? results $ fn (x)
                    = :missed $ first x
                :chunks results
                :text text
        |parse-by-word-iter $ quote
          defn parse-by-word-iter (acc text ys)
            if (empty? ys)
              if (.blank? text) acc $ conj acc ([] :rest text)
              let
                  y0 $ first ys
                  p $ .!indexOf text y0
                cond
                    > p 0
                    recur
                      conj acc
                        [] :rest $ .slice text 0 p
                        [] :hit y0
                      .slice text $ + p (count y0)
                      rest ys
                  (= p 0)
                    recur
                      conj acc $ [] :hit y0
                      .slice text $ count y0
                      rest ys
                  true $ conj acc ([] :missed y0)
        |parse-by-letter-iter $ quote
          defn parse-by-letter-iter (acc xs ys)
            if (empty? xs)
              if (empty? ys) acc $ conj acc
                [] :missed $ apply str ys
              if (empty? xs)
                conj acc $ [] :missed (apply str ys)
                if
                  = (first xs) (first ys)
                  recur
                    conj acc $ [] :hit (first xs)
                    rest xs
                    rest ys
                  if
                    = "\" " $ first ys
                    recur
                      conj acc $ [] :space (first xs)
                      rest xs
                      rest ys
                    recur
                      conj acc $ [] :rest (first xs)
                      rest xs
                      , ys
        |conflate-chunks-iter $ quote
          defn conflate-chunks-iter (acc buffer xs)
            if (empty? xs)
              if (nil? buffer) acc $ conj acc buffer
              let
                  x0 $ first xs
                if (nil? buffer)
                  recur acc x0 $ rest xs
                  if
                    = (first buffer) (first x0)
                    recur acc
                      [] (first buffer)
                        str (last buffer) (last x0)
                      rest xs
                    recur (conj acc buffer) x0 $ rest xs
        |parse-by-word $ quote
          defn parse-by-word (text query)
            let
                result $ parse-by-word-iter ([]) text
                  filter (.split query "\" ")
                    fn (x)
                      not $ .blank? x
              {}
                :matches? $ not
                  any? result $ fn (x)
                    = :missed $ first x
                :chunks result
                :text text
        |conflate-chunks $ quote
          defn conflate-chunks (xs)
            conflate-chunks-iter ([]) nil xs
    |fuzzy-filter.main $ {}
      :ns $ quote
        ns fuzzy-filter.main $ :require
          [] respo.core :refer $ [] render! clear-cache! realize-ssr!
          [] fuzzy-filter.comp.container :refer $ [] comp-container
          [] fuzzy-filter.updater :refer $ [] updater
          [] fuzzy-filter.schema :as schema
          [] reel.util :refer $ [] listen-devtools!
          [] reel.core :refer $ [] reel-updater refresh-reel
          [] reel.schema :as reel-schema
          [] cljs.reader :refer $ [] read-string
          [] fuzzy-filter.config :as config
          "\"./calcit.build-errors" :default build-errors
          "\"bottom-tip" :default hud!
      :defs $ {}
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
        |persist-storage! $ quote
          defn persist-storage! (? e)
            js/localStorage.setItem (:storage config/site)
              format-cirru-edn $ :store @*reel
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch *reel :changes $ fn (r p) (render-app!)
            listen-devtools! |a dispatch!
            js/window.addEventListener |beforeunload persist-storage!
            js/setInterval persist-storage! $ * 1000 60
            let
                raw $ js/localStorage.getItem (:storage config/site)
              when (some? raw)
                dispatch! :hydrate-storage $ parse-cirru-edn raw
            println "|App started."
        |dispatch! $ quote
          defn dispatch! (op op-data) (; println |Dispatch: op)
            reset! *reel $ reel-updater updater @*reel op op-data
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *reel :changes) (clear-cache!)
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
    |fuzzy-filter.util $ {}
      :ns $ quote (ns fuzzy-filter.util)
      :defs $ {}
        |get-env! $ quote
          defn get-env! (property)
            aget (.-env js/process) property
    |fuzzy-filter.schema $ {}
      :ns $ quote (ns fuzzy-filter.schema)
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
            :content "\"this and that to search"
            :query "\"that search"
