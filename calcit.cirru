
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |fuzzy-filter
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'fuzzy-filter.main/main!) (:mode :native) (:reload-fn 'fuzzy-filter.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
      :type-slots $ {}
  :files $ {}
    'fuzzy-filter.comp.container $ %{} 'FileEntry
      :defs $ {} $ 'comp-container
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ &map:get reel :store
                states $ &map:get store :states
              div
                {} $ :style $ merge ui/global ui/column
                  {} $ :padding |16
                div ({})
                  div ({})
                    input $ {} (:style ui/input)
                      :value $ &map:get store :content
                      :placeholder |text
                      :on-input $ fn (e d! m!)
                        d! :content $ &map:get e :value
                  =< nil 8
                  div ({})
                    input $ {} (:style ui/input)
                      :value $ &map:get store :query
                      :placeholder |query
                      :on-input $ fn (e d! m!)
                        d! :query $ &map:get e :value
                let
                    result $ parse-by-letter (&map:get store :content) (&map:get store :query)
                    word-result $ parse-by-word (&map:get store :content) (&map:get store :query)
                  div ({})
                    pre
                      {} $ :style $ {} (:font-family ui/font-code)
                      code ({})
                        <> $ trim $ format-cirru-edn result
                    pre
                      {} $ :style $ {} (:font-family ui/font-code)
                      code ({})
                        <> $ trim $ format-cirru-edn word-result
                    when (&map:get result :matches?)
                      div ({})
                        comp-visual (&map:get result :chunks)
                          {} $ :color $ hsl 0 0 70
                    when (&map:get word-result :matches?)
                      div ({})
                        comp-visual (&map:get word-result :chunks)
                          {} $ :color $ hsl 0 0 70
                when dev? $ comp-reel (>> states :reel) reel $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns fuzzy-filter.comp.container
          :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp >> <> div button textarea span input pre code
            [] respo.comp.space :refer $ [] =<
            [] reel.comp.reel :refer $ [] comp-reel
            [] fuzzy-filter.config :refer $ [] dev?
            [] fuzzy-filter.core :refer $ [] parse-by-letter parse-by-word
            [] fuzzy-filter.comp.visual :refer $ [] comp-visual
    'fuzzy-filter.comp.visual $ %{} 'FileEntry
      :defs $ {} $ 'comp-visual
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-visual (pieces style-rest)
            let
                style-base $ {}
                style-hit $ {}
              list->
                {} $ :style $ {} (:display :inline-block)
                -> pieces $ map-indexed $ fn (idx chunk)
                  [] idx $ span $ {}
                    :inner-text $ option:unwrap-or (last chunk) |
                    :style $ merge style-base $ if
                      = :hit $ option:unwrap-or (first chunk) :missed
                      merge
                        {} $ :font-weight :bold
                        , style-hit
                      , style-rest
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
              :: 'List $ :: 'List 'Dynamic
              :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns fuzzy-filter.comp.visual
          :require
            [] hsl.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp cursor-> list-> <> div button textarea span input pre
            [] respo.comp.space :refer $ [] =<
    'fuzzy-filter.config $ %{} 'FileEntry
      :defs $ {}
        'bundle-builds $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def bundle-builds (#{} |release |local-bundle)
          :examples $ []
          :schema $ :: 'Set 'String
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:storage |fuzzy-filter) (:dev-ui |http://localhost:8100/main.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main.css) (:cdn-url |http://cdn.tiye.me/fuzzy-filter/) (:cdn-folder |tiye.me:cdn/fuzzy-filter) (:title "|Fuzzy Filter") (:icon |http://cdn.tiye.me/logo/mvc-works.png) (:upload-folder |tiye.me:repo/mvc-works/fuzzy-filter/)
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns fuzzy-filter.config
          :require $ [] fuzzy-filter.util :refer $ [] get-env!
    'fuzzy-filter.core $ %{} 'FileEntry
      :defs $ {}
        'conflate-chunks $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn conflate-chunks (xs)
            conflate-chunks-iter ([]) ([]) xs
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'List (:: 'List 'Dynamic)
            :return $ :: 'List $ :: 'List 'Dynamic
        'conflate-chunks-iter $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn conflate-chunks-iter (acc buffer xs)
            if (empty? xs)
              if (empty? buffer) acc $ conj acc buffer
              let
                  x0 $ option:unwrap $ first xs
                if (empty? buffer)
                  recur acc x0 $ rest xs
                  if
                    =
                      option:unwrap-or (first buffer) nil
                      option:unwrap-or (first x0) nil
                    recur acc
                      []
                        option:unwrap-or (first buffer) nil
                        str
                          option:unwrap-or (last buffer) |
                          option:unwrap-or (last x0) |
                      rest xs
                    recur (conj acc buffer) x0 $ rest xs
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
              :: 'List $ :: 'List 'Dynamic
              :: 'List 'Dynamic
              :: 'List $ :: 'List 'Dynamic
            :return $ :: 'List $ :: 'List 'Dynamic
        'parse-by-letter $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-by-letter (text query)
            let
                results $ conflate-chunks $ parse-by-letter-iter ([]) (split text |) (split query |)
              {}
                :matches? $ not $ any? results
                  fn (x)
                    = :missed $ option:unwrap-or (first x) :missed
                :chunks results
                :text text
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String 'String
            :return $ :: 'Map 'Tag 'Dynamic
        'parse-by-letter-iter $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-by-letter-iter (acc xs ys)
            if (empty? xs)
              if (empty? ys) acc $ conj acc $ [] :missed (apply str ys)
              if (empty? ys)
                conj acc $ [] :rest $ apply str xs
                if
                  =
                    option:unwrap-or (first xs) nil
                    option:unwrap-or (first ys) nil
                  recur
                    conj acc $ [] :hit $ option:unwrap-or (first xs) |
                    rest xs
                    rest ys
                  if
                    = "| " $ option:unwrap-or (first ys) |
                    recur
                      conj acc $ [] :space $ option:unwrap-or (first xs) |
                      rest xs
                      rest ys
                    recur
                      conj acc $ [] :rest $ option:unwrap-or (first xs) |
                      rest xs
                      , ys
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
              :: 'List $ :: 'List 'Dynamic
              :: 'List 'String
              :: 'List 'String
            :return $ :: 'List $ :: 'List 'Dynamic
        'parse-by-word $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-by-word (text query)
            let
                result $ parse-by-word-iter ([]) text $ filter (split query "| ")
                  fn (x)
                    not $ blank? x
              {}
                :matches? $ not $ any? result
                  fn (x)
                    = :missed $ option:unwrap-or (first x) :missed
                :chunks result
                :text text
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String 'String
            :return $ :: 'Map 'Tag 'Dynamic
        'parse-by-word-iter $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-by-word-iter (acc text ys)
            if (empty? ys)
              if (blank? text) acc $ conj acc $ [] :rest text
              let
                  y0 $ option:unwrap-or (first ys) |
                  p $ unsafe-coerce (.!indexOf text y0) 'Number
                cond
                    > p 0
                    recur
                      conj acc
                        [] :rest $ slice text 0 p
                        [] :hit y0
                      slice text $ + p $ count y0
                      rest ys
                  (= p 0)
                    recur
                      conj acc $ [] :hit y0
                      slice text $ count y0
                      rest ys
                  true $ conj acc $ [] :missed y0
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
              :: 'List $ :: 'List 'Dynamic
              , 'String $ :: 'List 'String
            :features $ #{} :js-ffi
            :return $ :: 'List $ :: 'List 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns fuzzy-filter.core
          :require $ [] clojure.string :as string
    'fuzzy-filter.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel
            -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Ref 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op) (; println |Dispatch: op)
            reset! *reel $ reel-updater updater @*reel op
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Enum
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch *reel :changes $ fn (r p) (render-app!)
            listen-devtools! |a dispatch!
            js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
            js/setInterval persist-storage! $ * 1000 60
            let
                raw $ js/localStorage.getItem $ &map:get config/site :storage
              when (js-present? raw)
                dispatch! $ :: :hydrate-storage $ parse-cirru-edn (unsafe-coerce raw 'String)
            println "|App started."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target (.querySelector js/document |.app)
          :examples $ []
          :schema $ :: 'JsObject
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            js/localStorage.setItem (&map:get config/site :storage)
              format-cirru-edn $ &map:get @*reel :store
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns fuzzy-filter.main
          :require
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
    'fuzzy-filter.schema $ %{} 'FileEntry
      :defs $ {} $ 'store
        %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            {}
              :states $ {}
              :content "|this and that to search"
              :query "|that search"
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns fuzzy-filter.schema
    'fuzzy-filter.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor s) (update-states store cursor s)
              (:content d) (assoc store :content d)
              (:query d) (assoc store :query d)
              (:hydrate-storage d) d
              _ $ do (eprintln "|Unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Enum 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns fuzzy-filter.updater
          :require $ [] respo.cursor :refer $ [] update-states
    'fuzzy-filter.util $ %{} 'FileEntry
      :defs $ {} $ 'get-env!
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-env! (property)
            aget (unsafe-coerce js/process.env 'JsObject) property
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'String
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns fuzzy-filter.util
