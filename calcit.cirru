
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |fuzzy-filter
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'fuzzy-filter.main/main!) (:mode :js) (:reload-fn 'fuzzy-filter.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    'fuzzy-filter.comp.container $ %{} 'FileEntry
      :defs $ {} $ 'comp-container
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
                content $ :content store
                query $ :query store
              div
                {} $ :style $ .merge ui/global ui/column
                  {} $ :padding |16
                div ({})
                  div ({})
                    input $ {} (:style ui/input) (:value content) (:placeholder |text)
                      :on-input $ fn (e d!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Dynamic
                              :return 'Unit
                          :return 'Unit
                        d! $ :: :content $ decode-map-as
                          .unwrap $ get e :value
                          , 'String
                        , &unit
                  =< nil 8
                  div ({})
                    input $ {} (:style ui/input) (:value query) (:placeholder |query)
                      :on-input $ fn (e d!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Dynamic
                              :return 'Unit
                          :return 'Unit
                        d! $ :: :query $ decode-map-as
                          .unwrap $ get e :value
                          , 'String
                        , &unit
                let
                    result $ parse-by-letter content query
                    word-result $ parse-by-word content query
                  div ({})
                    pre
                      {} $ :style $ {} (:font-family ui/font-code)
                      code ({})
                        <> $ trim $ format-cirru-edn result
                    pre
                      {} $ :style $ {} (:font-family ui/font-code)
                      code ({})
                        <> $ trim $ format-cirru-edn word-result
                    when
                      match (calcit.core/get result :matches?)
                        (:some value) value
                        (:none) nil
                      div ({})
                        comp-visual
                          decode-map-as
                            match (calcit.core/get result :chunks)
                              (:some value) value
                              (:none) nil
                            :: 'List $ :: 'List 'Dynamic
                          {} $ :color $ hsl 0 0 70
                    when
                      match (calcit.core/get word-result :matches?)
                        (:some value) value
                        (:none) nil
                      div ({})
                        comp-visual
                          decode-map-as
                            match (calcit.core/get word-result :chunks)
                              (:some value) value
                              (:none) nil
                            :: 'List $ :: 'List 'Dynamic
                          {} $ :color $ hsl 0 0 70
                when dev? $ comp-typed-reel (>> states :reel) reel $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'reel.typed/State 'fuzzy-filter.schema/Op 'fuzzy-filter.schema/Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns fuzzy-filter.comp.container
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> <> div button textarea span input pre code
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-typed-reel
            fuzzy-filter.config :refer $ dev?
            fuzzy-filter.core :refer $ parse-by-letter parse-by-word
            fuzzy-filter.comp.visual :refer $ comp-visual
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
                  hint-fn $ {}
                    :args $ [] 'Number $ :: 'List 'Dynamic
                    :return $ :: 'List 'Dynamic
                  [] idx $ span $ {}
                    :inner-text $ .unwrap-or (last chunk) |
                    :style $ .merge style-base $ if
                      = :hit $ .unwrap-or (first chunk) :missed
                      .merge
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
            hsl.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp cursor-> list-> <> div button textarea span input pre
            respo.comp.space :refer $ =<
    'fuzzy-filter.config $ %{} 'FileEntry
      :defs $ {}
        'bundle-builds $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def bundle-builds (#{} |release |local-bundle)
          :examples $ []
          :schema $ :: 'Set 'String
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:storage |fuzzy-filter) (:dev-ui |http://localhost:8100/main.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main.css) (:cdn-url |http://cdn.tiye.me/fuzzy-filter/) (:cdn-folder |tiye.me:cdn/fuzzy-filter) (:title "|Fuzzy Filter") (:icon |http://cdn.tiye.me/logo/mvc-works.png) (:upload-folder |tiye.me:repo/mvc-works/fuzzy-filter/)
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns fuzzy-filter.config
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
                  x0 $ .unwrap $ first xs
                if (empty? buffer)
                  recur acc x0 $ rest xs
                  if
                    =
                      decode-map-as
                        .unwrap-or (first buffer) :unknown
                        , 'Tag
                      decode-map-as
                        .unwrap-or (first x0) :unknown
                        , 'Tag
                    recur acc
                      []
                        .unwrap-or (first buffer) nil
                        str
                          .unwrap-or (last buffer) |
                          .unwrap-or (last x0) |
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
                results $ conflate-chunks $ parse-by-letter-iter ([])
                  split (assert-type text 'String) |
                  split (assert-type query 'String) |
              {}
                :matches? $ not $ any? results
                  fn (x)
                    hint-fn $ {}
                      :args $ [] $ :: 'List 'Dynamic
                      :return 'Bool
                    = :missed $ .unwrap-or (first x) :missed
                :chunks results
                :text text
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String 'String
            :return $ :: 'Map 'Tag 'Dynamic
          :tests $ []
            %{} 'TestEntry (:name |matched-subsequence)
              :code $ quote $ assert= true
                match
                  calcit.core/get (parse-by-letter |abc |ac) :matches?
                  (:some value) value
                  (:none) nil
              :tags $ #{} :unit
            %{} 'TestEntry (:name |unmatched-query-suffix)
              :code $ quote $ assert= false
                match
                  calcit.core/get (parse-by-letter |abc |abcd) :matches?
                  (:some value) value
                  (:none) nil
              :tags $ #{} :unit
        'parse-by-letter-iter $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-by-letter-iter (acc xs ys)
            if (empty? xs)
              if (empty? ys) acc $ conj acc $ [] :missed (apply str ys)
              if (empty? ys)
                conj acc $ [] :rest $ apply str xs
                if
                  =
                    .unwrap $ first xs
                    .unwrap $ first ys
                  recur
                    conj acc $ [] :hit $ .unwrap-or (first xs) |
                    rest xs
                    rest ys
                  if
                    = "| " $ .unwrap-or (first ys) |
                    recur
                      conj acc $ [] :space $ .unwrap-or (first xs) |
                      rest xs
                      rest ys
                    recur
                      conj acc $ [] :rest $ .unwrap-or (first xs) |
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
                    hint-fn $ {}
                      :args $ [] 'String
                      :return 'Bool
                    not $ blank? x
              {}
                :matches? $ not $ any? result
                  fn (x)
                    hint-fn $ {}
                      :args $ [] $ :: 'List 'Dynamic
                      :return 'Bool
                    = :missed $ .unwrap-or (first x) :missed
                :chunks result
                :text text
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String 'String
            :return $ :: 'Map 'Tag 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |emoji-before-word)
            :code $ quote $ assert=
              {} (:matches? true) (:text "|😀ab😀")
                :chunks $ [] ([] :rest "|😀a") ([] :hit |b) ([] :rest "|😀")
              parse-by-word "|😀ab😀" |b
            :tags $ #{} :unit
        'parse-by-word-iter $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-by-word-iter (acc text ys)
            if (empty? ys)
              if (blank? text) acc $ conj acc $ [] :rest text
              let
                  y0 $ .unwrap-or (first ys) |
                  p $ .unwrap-or (str-find-index text y0) -1
                cond
                    > p 0
                    recur
                      conj acc
                        [] :rest $ slice text 0 p
                        [] :hit y0
                      slice text $ + p $ .len y0
                      rest ys
                  (= p 0)
                    recur
                      conj acc $ [] :hit y0
                      slice text $ .len y0
                      rest ys
                  true $ conj acc $ [] :missed y0
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
              :: 'List $ :: 'List 'Dynamic
              , 'String $ :: 'List 'String
            :return $ :: 'List $ :: 'List 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns fuzzy-filter.core
          :require $ clojure.string :as string
    'fuzzy-filter.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel (schema/new-reel schema/store)
          :examples $ []
          :schema $ :: 'Ref $ :: 'reel.typed/State 'fuzzy-filter.schema/Op 'fuzzy-filter.schema/Store
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            if (enum? op)
              match (typed/decode-control op)
                (:some control)
                  reset! *reel $ typed/apply-control updater @*reel control
                (:none)
                  reset! *reel $ typed/record-op updater @*reel (schema/decode-op op) (generate-id!) (unix-time-ms)
              raise |Expected-Fuzzy-Filter-operation
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch! *reel :changes $ fn (r p) (render-app!)
            listen-devtools! |a dispatch!
            match
              js-ffi.browser/storage-get $ decode-map-as
                match (calcit.core/get config/site :storage)
                  (:some value) value
                  (:none) nil
                , 'String
              (:none) &unit
              (:some raw)
                dispatch! $ :: :hydrate-storage $ parse-cirru-edn raw
            js-ffi.browser/add-event-listener! |beforeunload $ fn (event) (persist-storage!)
            js-ffi.browser/set-interval! persist-storage! $ * 1000 60
            println "|App started."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            match (js-ffi.browser/query-selector |.app)
              (:none) (raise "|Missing .app mount target")
              (:some host) (respo.ffi.browser/narrow-element host)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.dom/DomElement)
            :args $ []
            :features $ #{} :js-ffi
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            js-ffi.browser/storage-set!
              decode-map-as
                match (calcit.core/get config/site :storage)
                  (:some value) value
                  (:none) nil
                , 'String
              format-cirru-edn $ &struct:to-map $ :store @*reel
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (js-nullish? build-errors)
              do (remove-watch! *reel :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ typed/refresh updater @*reel schema/store
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! (mount-target) (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns fuzzy-filter.main
          :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            fuzzy-filter.comp.container :refer $ comp-container
            fuzzy-filter.updater :refer $ updater
            fuzzy-filter.schema :as schema
            reel.util :refer $ listen-devtools!
            fuzzy-filter.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            reel.typed :as typed
            respo.util :refer $ generate-id!
    'fuzzy-filter.schema $ %{} 'FileEntry
      :defs $ {}
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op
            :states (:: 'List 'Dynamic) 'Dynamic
            :content 'String
            :query 'String
            :hydrate-storage 'fuzzy-filter.schema/Store
          :examples $ []
          :schema $ :: 'EnumDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :states $ :: 'Map 'Dynamic 'Dynamic
            :content 'String
            :query 'String
          :examples $ []
          :schema $ :: 'StructDef
        'decode-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-op (op)
            match op
              (:states cursor data)
                Op :states
                  decode-map-as cursor $ :: 'List 'Dynamic
                  , data
              (:content value)
                Op :content $ decode-map-as value 'String
              (:query value)
                Op :query $ decode-map-as value 'String
              (:hydrate-storage data)
                Op :hydrate-storage $ normalize-store data
              _ $ raise |Unknown-Fuzzy-Filter-operation
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'fuzzy-filter.schema/Op)
            :args $ [] 'Enum
        'empty-records $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def empty-records ([])
          :examples $ []
          :schema $ :: 'List $ :: 'reel.typed/Record 'fuzzy-filter.schema/Op
        'new-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn new-reel (base)
            typed/State :base base :store base :records empty-records :pointer (Option :none) :stopped? false :display? false :merged? false
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'fuzzy-filter.schema/Store
            :return $ :: 'reel.typed/State 'fuzzy-filter.schema/Op 'fuzzy-filter.schema/Store
        'normalize-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-store (raw)
            decode-map-as
              if (struct? raw) (&struct:to-map raw) raw
              , 'Store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'fuzzy-filter.schema/Store)
            :args $ [] 'Dynamic
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :states ({}) :content "|this and that to search" :query "|that search"
          :examples $ []
          :schema $ :: 'fuzzy-filter.schema/Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns fuzzy-filter.schema
          :require $ reel.typed :as typed
    'fuzzy-filter.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor data)
                let
                    states $ update-state-tree (:states store) cursor data
                  if (map? states) (assoc store :states states) (raise |Invalid-state-tree)
              (:content value) (assoc store :content value)
              (:query value) (assoc store :query value)
              (:hydrate-storage data) data
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'fuzzy-filter.schema/Store)
            :args $ [] 'fuzzy-filter.schema/Store 'fuzzy-filter.schema/Op 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns fuzzy-filter.updater
          :require
            respo.cursor :refer $ update-state-tree
            fuzzy-filter.schema :as schema
