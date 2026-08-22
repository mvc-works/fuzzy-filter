
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --full` first. Manual edits must follow format and schema conventions, then run `calcit edit format`.") (:package |fuzzy-filter)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'fuzzy-filter.main/main!) (:mode :native) (:reload-fn 'fuzzy-filter.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    |fuzzy-filter.comp.container $ %{} 'FileEntry
      :defs $ {}
        |comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  store $ reel-schema/read-field reel :store
                  states $ reel-schema/read-field store :states
                div
                  {} $ :style
                    merge ui/global ui/column $ {} (:padding 16)
                  div ({})
                    div ({})
                      input $ {} (:style ui/input)
                        :value $ reel-schema/read-field store :content
                        :placeholder |text
                        :on-input $ fn (e d! m!)
                          d! :content $ reel-schema/read-field e :value
                    =< nil 8
                    div ({})
                      input $ {} (:style ui/input)
                        :value $ reel-schema/read-field store :query
                        :placeholder |query
                        :on-input $ fn (e d! m!)
                          d! :query $ reel-schema/read-field e :value
                  let
                      result $ parse-by-letter (reel-schema/read-field store :content) (reel-schema/read-field store :query)
                      word-result $ parse-by-word (reel-schema/read-field store :content) (reel-schema/read-field store :query)
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
                      when
                        option:unwrap-or (get result :matches?) false
                        div ({})
                          comp-visual
                            option:unwrap-or (get result :chunks) ([])
                            {} $ :style-rest
                              {} $ :color (hsl 0 0 70)
                      when
                        option:unwrap-or (get word-result :matches?) false
                        div ({})
                          comp-visual
                            option:unwrap-or (get word-result :chunks) ([])
                            {} $ :style-rest
                              {} $ :color (hsl 0 0 70)
                  when dev? $ comp-reel (>> states :reel) reel ({})
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
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
            reel.schema :as reel-schema
    |fuzzy-filter.comp.visual $ %{} 'FileEntry
      :defs $ {}
        |comp-visual $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-visual (pieces options)
              list->
                {} $ :style
                  {} $ :display :inline-block
                -> pieces $ map-indexed
                  fn (idx chunk)
                    [] idx $ span
                      {}
                        :inner-text $ option:unwrap-or (last chunk) |
                        :style $ merge
                          option:unwrap-or (get options :style-base) ({})
                          if
                            = :hit $ option:unwrap-or (first chunk) nil
                            merge
                              {} $ :font-weight :bold
                              option:unwrap-or (get options :style-hit) ({})
                            option:unwrap-or (get options :style-rest) ({})
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns fuzzy-filter.comp.visual $ :require
            [] hsl.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp cursor-> list-> <> div button textarea span input pre
            [] respo.comp.space :refer $ [] =<
    |fuzzy-filter.config $ %{} 'FileEntry
      :defs $ {}
        |bundle-builds $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def bundle-builds $ #{} |release |local-bundle
          :examples $ []
          :schema $ :: 'Dynamic
        |dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def dev? $ = |dev
              option:unwrap-or (get-env! |mode) |release
          :examples $ []
          :schema $ :: 'Dynamic
        |site $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:storage |fuzzy-filter) (:dev-ui |http://localhost:8100/main.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main.css) (:cdn-url |http://cdn.tiye.me/fuzzy-filter/) (:cdn-folder |tiye.me:cdn/fuzzy-filter) (:title "|Fuzzy Filter") (:icon |http://cdn.tiye.me/logo/mvc-works.png) (:upload-folder |tiye.me:repo/mvc-works/fuzzy-filter/)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns fuzzy-filter.config $ :require
            [] fuzzy-filter.util :refer $ [] get-env!
    |fuzzy-filter.core $ %{} 'FileEntry
      :defs $ {}
        |conflate-chunks $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn conflate-chunks (xs)
              conflate-chunks-iter ([]) nil xs
          :examples $ []
          :schema $ :: 'Dynamic
        |conflate-chunks-iter $ %{} 'CodeEntry (:doc |)
          :code $ quote
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
          :examples $ []
          :schema $ :: 'Dynamic
        |parse-by-letter $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn parse-by-letter (text query)
              let
                  results $ conflate-chunks
                    parse-by-letter-iter ([]) (.split text |) (.split query |)
                {}
                  :matches? $ not
                    any? results $ fn (x)
                      = :missed $ option:unwrap-or (first x) nil
                  :chunks results
                  :text text
          :examples $ []
          :schema $ :: 'Dynamic
        |parse-by-letter-iter $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn parse-by-letter-iter (acc xs ys)
              if (empty? xs)
                if (empty? ys) acc $ conj acc
                  [] :missed $ apply str ys
                if (empty? xs)
                  conj acc $ [] :missed (apply str ys)
                  if
                    =
                      option:unwrap-or (first xs) nil
                      option:unwrap-or (first ys) nil
                    recur
                      conj acc $ [] :hit
                        option:unwrap-or (first xs) nil
                      rest xs
                      rest ys
                    if
                      = "| " $ option:unwrap-or (first ys) nil
                      recur
                        conj acc $ [] :space
                          option:unwrap-or (first xs) nil
                        rest xs
                        rest ys
                      recur
                        conj acc $ [] :rest
                          option:unwrap-or (first xs) nil
                        rest xs
                        , ys
          :examples $ []
          :schema $ :: 'Dynamic
        |parse-by-word $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn parse-by-word (text query)
              let
                  result $ parse-by-word-iter ([]) text
                    filter (.split query "| ")
                      fn (x)
                        not $ .blank? x
                {}
                  :matches? $ not
                    any? result $ fn (x)
                      = :missed $ option:unwrap-or (first x) nil
                  :chunks result
                  :text text
          :examples $ []
          :schema $ :: 'Dynamic
        |parse-by-word-iter $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn parse-by-word-iter (acc text ys)
              if (empty? ys)
                if (.blank? text) acc $ conj acc ([] :rest text)
                let
                    y0 $ option:unwrap-or (first ys) |
                    p $ unsafe-coerce (.!indexOf text y0) Number
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
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns fuzzy-filter.core $ :require ([] clojure.string :as string)
    |fuzzy-filter.main $ %{} 'FileEntry
      :defs $ {}
        |*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Dynamic
        |dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op) (; println |Dispatch: op)
              reset! *reel $ reel-updater updater @*reel op
          :examples $ []
          :schema $ :: 'Dynamic
        |main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              if config/dev? $ load-console-formatter!
              render-app!
              add-watch *reel :changes $ fn (r p) (render-app!)
              listen-devtools! |a dispatch!
              js/window.addEventListener |beforeunload persist-storage!
              js/setInterval persist-storage! $ * 1000 60
              let
                  raw $ js/localStorage.getItem (:storage config/site)
                when (js-present? raw)
                  dispatch! $ :: :hydrate-storage
                    parse-cirru-edn $ unsafe-coerce raw String
              println "|App started."
          :examples $ []
          :schema $ :: 'Dynamic
        |mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def mount-target $ .querySelector js/document |.app
          :examples $ []
          :schema $ :: 'Dynamic
        |persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! (? e)
              js/localStorage.setItem
                option:unwrap-or (get config/site :storage) |fuzzy-filter
                format-cirru-edn $ reel-schema/read-field @*reel :store
          :examples $ []
          :schema $ :: 'Dynamic
        |reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Dynamic
        |render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
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
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
    |fuzzy-filter.schema $ %{} 'FileEntry
      :defs $ {}
        |store $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
              :content "|this and that to search"
              :query "|that search"
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns fuzzy-filter.schema)
    |fuzzy-filter.updater $ %{} 'FileEntry
      :defs $ {}
        |updater $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              tag-match op
                (:states cursor s) (update-states store cursor s)
                (:content d) (assoc store :content d)
                (:query d) (assoc store :query d)
                (:hydrate-storage d) d
                _ $ do (eprintln "|Unknown op:" op) store
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns fuzzy-filter.updater $ :require
            [] respo.cursor :refer $ [] update-states
    |fuzzy-filter.util $ %{} 'FileEntry
      :defs $ {}
        |get-env! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn get-env! (property)
              let
                  process $ unsafe-coerce js/process JsObject
                  env $ .-env process
                if (js-present? env)
                  aget (unsafe-coerce env JsObject) property
                  , nil
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns fuzzy-filter.util)
