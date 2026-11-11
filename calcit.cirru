
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |fuzzy-filter
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'fuzzy-filter.main/main!) (:mode :js) (:reload-fn 'fuzzy-filter.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op 'fuzzy-filter.schema/Op
  :files $ {}
    'fuzzy-filter.comp.container $ %{} 'FileEntry
      :defs $ {} $ 'comp-container
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel on-control!)
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
                        hint-fn $ Fn respo.schema/RespoEvent
                          Fn fuzzy-filter.schema/Op $ -> Unit
                          -> Unit
                        d! $ fuzzy-filter.schema/Op :content $ decode-map-as (:value e) 'String
                        , &unit
                  space-y 8
                  div ({})
                    input $ {} (:style ui/input) (:value query) (:placeholder |query)
                      :on-input $ fn (e d!)
                        hint-fn $ Fn respo.schema/RespoEvent
                          Fn fuzzy-filter.schema/Op $ -> Unit
                          -> Unit
                        d! $ fuzzy-filter.schema/Op :query $ decode-map-as (:value e) 'String
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
                    if
                      decode-map-as
                        .unwrap $ get result :matches?
                        , 'Bool
                      Some $ div ({})
                        comp-visual
                          decode-map-as
                            .unwrap $ get result :chunks
                            List $ Tuple Tag String
                          {} $ :color $ hsl 0 0 70
                      , None
                    if
                      decode-map-as
                        .unwrap $ get word-result :matches?
                        , 'Bool
                      Some $ div ({})
                        comp-visual
                          decode-map-as
                            .unwrap $ get word-result :chunks
                            List $ Tuple Tag String
                          {} $ :color $ hsl 0 0 70
                      , None
                if dev?
                  Some $ comp-typed-reel (>> states :reel) reel ({}) on-control!
                  , None
          :examples $ []
          :schema $ quote $ Fn (reel.typed/State fuzzy-filter.schema/Op fuzzy-filter.schema/Store)
            Fn reel.typed/Control $ -> Unit
            -> respo.schema/Component
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns fuzzy-filter.comp.container
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> <> div button textarea span input pre code
            respo.comp.space :refer $ space-y
            reel.comp.reel :refer $ comp-typed-reel
            fuzzy-filter.config :refer $ dev?
            fuzzy-filter.core :refer $ parse-by-letter parse-by-word
            fuzzy-filter.comp.visual :refer $ comp-visual
    'fuzzy-filter.comp.visual $ %{} 'FileEntry
      :defs $ {} $ 'comp-visual
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-visual (pieces style-rest)
            keyed->
              {} $ :style $ {} (:display :inline-block)
              -> pieces $ map-indexed $ fn (idx chunk)
                hint-fn $ Fn Number (Tuple Tag String) (-> respo.schema/ChildPair)
                let[] (kind text) chunk $ keyed-element idx $ span
                  {} (:inner-text text)
                    :style $ if (= :hit kind)
                      {} $ :font-weight :bold
                      , style-rest
          :examples $ []
          :schema $ quote $ Fn
            List $ Tuple Tag String
            Map Tag respo.schema/CssValue
            -> respo.schema/Component
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns fuzzy-filter.comp.visual
          :require $ respo.core :refer $ defcomp keyed-> keyed-element span
    'fuzzy-filter.config $ %{} 'FileEntry
      :defs $ {}
        'bundle-builds $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def bundle-builds (#{} |release |local-bundle)
          :examples $ []
          :schema $ quote $ Set String
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:storage |fuzzy-filter) (:dev-ui |http://localhost:8100/main.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main.css) (:cdn-url |http://cdn.tiye.me/fuzzy-filter/) (:cdn-folder |tiye.me:cdn/fuzzy-filter) (:title "|Fuzzy Filter") (:icon |http://cdn.tiye.me/logo/mvc-works.png) (:upload-folder |tiye.me:repo/mvc-works/fuzzy-filter/)
          :examples $ []
          :schema $ quote $ Map Tag String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns fuzzy-filter.config
    'fuzzy-filter.core $ %{} 'FileEntry
      :defs $ {}
        'chunk $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn chunk (kind text)
            decode-map-as ([] kind text) (Tuple Tag String)
          :examples $ []
          :schema $ quote $ Fn Tag String
            -> $ Tuple Tag String
        'conflate-chunks $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn conflate-chunks (xs)
            conflate-chunks-iter ([]) None xs
          :examples $ []
          :schema $ quote $ Fn
            List $ Tuple Tag String
            -> $ List $ Tuple Tag String
        'conflate-chunks-iter $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn conflate-chunks-iter (acc buffer xs)
            match (first xs)
              (:none)
                match buffer
                  (:none) acc
                  (:some previous) (conj acc previous)
              (:some current)
                match buffer
                  (:none)
                    recur acc (Some current) (rest xs)
                  (:some previous)
                    let[] (kind text) current $ let[] (prior-kind prior-text) previous $ if (= kind prior-kind)
                      recur acc
                        Some $ chunk kind $ str prior-text text
                        rest xs
                      recur (conj acc previous) (Some current) (rest xs)
          :examples $ []
          :schema $ quote $ Fn
            List $ Tuple Tag String
            Option $ Tuple Tag String
            List $ Tuple Tag String
            -> $ List $ Tuple Tag String
        'match-result $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn match-result (text pieces)
            decode-map-as
              {}
                :matches? $ not $ any? pieces
                  fn (piece)
                    hint-fn $ Fn (Tuple Tag String) (-> Bool)
                    let[] (kind _) piece $ = kind :missed
                :chunks pieces
                :text text
              Map Tag fuzzy-filter.schema/MatchValue
          :examples $ []
          :schema $ quote $ Fn String
            List $ Tuple Tag String
            -> $ Map Tag fuzzy-filter.schema/MatchValue
        'parse-by-letter $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-by-letter (text query)
            let
                results $ conflate-chunks $ parse-by-letter-iter ([])
                  split (assert-type text String) |
                  split (assert-type query String) |
              match-result text results
          :examples $ []
          :schema $ quote $ Fn String String
            -> $ Map Tag fuzzy-filter.schema/MatchValue
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
              if (empty? ys) acc $ conj acc $ chunk :missed (join-string ys |)
              if (empty? ys)
                conj acc $ chunk :rest $ join-string xs |
                if
                  =
                    .unwrap $ first xs
                    .unwrap $ first ys
                  recur
                    conj acc $ chunk :hit $ .unwrap-or (first xs) |
                    rest xs
                    rest ys
                  if
                    = "| " $ .unwrap-or (first ys) |
                    recur
                      conj acc $ chunk :space $ .unwrap-or (first xs) |
                      rest xs
                      rest ys
                    recur
                      conj acc $ chunk :rest $ .unwrap-or (first xs) |
                      rest xs
                      , ys
          :examples $ []
          :schema $ quote $ Fn
            List $ Tuple Tag String
            List String
            List String
            -> $ List $ Tuple Tag String
        'parse-by-word $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-by-word (text query)
            let
                result $ parse-by-word-iter ([]) text $ filter (split query "| ")
                  fn (x)
                    hint-fn $ Fn String $ -> Bool
                    not $ blank? x
              match-result text result
          :examples $ []
          :schema $ quote $ Fn String String
            -> $ Map Tag fuzzy-filter.schema/MatchValue
          :tests $ [] $ %{} 'TestEntry (:name |emoji-before-word)
            :code $ quote $ assert=
              {} (:matches? true) (:text "|😀ab😀")
                :chunks $ [] ([] :rest "|😀a") ([] :hit |b) ([] :rest "|😀")
              parse-by-word "|😀ab😀" |b
            :tags $ #{} :unit
        'parse-by-word-iter $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-by-word-iter (acc text ys)
            if (empty? ys)
              if (blank? text) acc $ conj acc $ chunk :rest text
              let
                  y0 $ .unwrap-or (first ys) |
                  p $ .unwrap-or (str-find-index text y0) -1
                cond
                    > p 0
                    recur
                      conj acc
                        chunk :rest $ slice text 0 $ Some p
                        chunk :hit y0
                      slice text
                        + p $ .len y0
                        , None
                      rest ys
                  (= p 0)
                    recur
                      conj acc $ chunk :hit y0
                      slice text (.len y0) None
                      rest ys
                  true $ conj acc $ chunk :missed y0
          :examples $ []
          :schema $ quote $ Fn
            List $ Tuple Tag String
            , String (List String)
              -> $ List $ Tuple Tag String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns fuzzy-filter.core
          :require $ clojure.string :as string
    'fuzzy-filter.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel (schema/new-reel schema/store)
          :examples $ []
          :schema $ quote $ Ref (typed/State schema/Op schema/Store)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            reset! *reel $ typed/record-op updater @*reel op (generate-id!) (unix-time-ms)
            , &unit
          :examples $ []
          :schema $ quote $ Fn schema/Op (-> Unit) (:features :js-ffi)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch! *reel :changes $ fn (r p) (render-app!)
            listen-devtools! |a on-control!
            match
              js-ffi.browser/storage-get $ .unwrap $ calcit.core/get config/site :storage
              (:none) &unit
              (:some raw)
                dispatch! $ schema/Op :hydrate-storage $ schema/normalize-store (parse-cirru-edn raw)
            js-ffi.browser/add-event-listener! |beforeunload $ fn (event) (persist-storage!)
            js-ffi.browser/set-interval! persist-storage! $ * 1000 60
            println "|App started."
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            match (js-ffi.browser/query-selector |.app)
              (:none) (raise "|Missing .app mount target")
              (:some host) (respo.ffi.browser/narrow-element host)
          :examples $ []
          :schema $ quote $ Fn (-> respo.dom/DomElement) (:features :js-ffi)
        'on-control! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-control! (control)
            reset! *reel $ typed/apply-control updater @*reel control
            , &unit
          :examples $ []
          :schema $ quote $ Fn typed/Control (-> Unit) (:features :js-ffi)
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            js-ffi.browser/storage-set!
              .unwrap $ calcit.core/get config/site :storage
              format-cirru-edn $ &struct:to-map $ :store @*reel
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
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
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render-with! (mount-target)
              fn () $ comp-container @*reel on-control!
              , dispatch!
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns fuzzy-filter.main
          :require
            respo.core :refer $ render-with! clear-cache! realize-ssr!
            fuzzy-filter.comp.container :refer $ comp-container
            fuzzy-filter.updater :refer $ updater
            fuzzy-filter.schema :as schema
            reel.util :refer $ listen-devtools!
            fuzzy-filter.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            reel.typed :as typed
    'fuzzy-filter.schema $ %{} 'FileEntry
      :defs $ {}
        'MatchValue $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion MatchValue Bool String
            List $ Tuple Tag String
          :examples $ []
          :schema $ quote UnionDef
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op (:content String) (:query String) (:hydrate-storage fuzzy-filter.schema/Store)
          :examples $ []
          :schema $ quote EnumDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :states $ Map Dynamic Dynamic
            :content String
            :query String
          :examples $ []
          :schema $ quote StructDef
        'empty-records $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def empty-records ([])
          :examples $ []
          :schema $ quote $ List (typed/Record Op)
        'new-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn new-reel (base)
            typed/State :base base :store base :records empty-records :pointer None :stopped? false :display? false :merged? false
          :examples $ []
          :schema $ quote $ Fn Store
            -> $ typed/State Op Store
        'normalize-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-store (raw)
            decode-map-as
              if (struct? raw) (&struct:to-map raw) raw
              , 'Store
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> Store)
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :states ({}) :content "|this and that to search" :query "|that search"
          :examples $ []
          :schema $ quote Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns fuzzy-filter.schema
          :require $ reel.typed :as typed
    'fuzzy-filter.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:content value) (assoc store :content value)
              (:query value) (assoc store :query value)
              (:hydrate-storage data) data
          :examples $ []
          :schema $ quote $ Fn schema/Store schema/Op String Number (-> schema/Store)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns fuzzy-filter.updater
          :require $ fuzzy-filter.schema :as schema
