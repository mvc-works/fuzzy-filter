
(ns fuzzy-filter.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.macros
             :refer
             [defcomp cursor-> action-> mutation-> <> div button textarea span input pre]]
            [verbosely.core :refer [verbosely!]]
            [respo.comp.space :refer [=<]]
            [reel.comp.reel :refer [comp-reel]]
            [respo-md.comp.md :refer [comp-md]]
            [fuzzy-filter.config :refer [dev?]]
            [fuzzy-filter.core :refer [parse-by-letter parse-by-word]]
            [fuzzy-filter.comp.visual :refer [comp-visual]]))

(defcomp
 comp-container
 (reel)
 (let [store (:store reel), states (:states store)]
   (div
    {:style (merge ui/global ui/column {:padding 16})}
    (div
     {}
     (div
      {}
      (input
       {:style ui/input,
        :value (:content store),
        :placeholder "text",
        :on-input (fn [e d! m!] (d! :content (:value e)))}))
     (=< nil 8)
     (div
      {}
      (input
       {:style ui/input,
        :value (:query store),
        :placeholder "query",
        :on-input (fn [e d! m!] (d! :query (:value e)))})))
    (let [result (parse-by-letter (:content store) (:query store))
          word-result (parse-by-word (:content store) (:query store))]
      (div
       {}
       (pre {:style {:font-family ui/font-code}} (<> result))
       (pre {:style {:font-family ui/font-code}} (<> word-result))
       (when (:matches? result)
         (div {} (comp-visual (:chunks result) {:style-rest {:color (hsl 0 0 70)}})))
       (when (:matches? word-result)
         (div {} (comp-visual (:chunks word-result) {:style-rest {:color (hsl 0 0 70)}})))))
    (when dev? (cursor-> :reel comp-reel states reel {})))))
