
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
            [fuzzy-filter.core :refer [resolve-text]]))

(defcomp
 comp-container
 (reel)
 (let [store (:store reel), states (:states store)]
   (div
    {:style (merge ui/global ui/column)}
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
    (pre
     {:style {:font-family ui/font-code}}
     (<> (resolve-text (:content store) (:query store))))
    (when dev? (cursor-> :reel comp-reel states reel {})))))
