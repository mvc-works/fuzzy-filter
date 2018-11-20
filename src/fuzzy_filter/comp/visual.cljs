
(ns fuzzy-filter.comp.visual
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.core
             :refer
             [defcomp cursor-> list-> <> div button textarea span input pre]]
            [respo.comp.space :refer [=<]]))

(defcomp
 comp-visual
 (pieces options)
 (list->
  :span
  {}
  (->> pieces
       (map-indexed
        (fn [idx chunk]
          [idx
           (span
            {:inner-text (last chunk),
             :style (merge
                     (:style-base options)
                     (if (= :hitted (first chunk))
                       (merge {:font-weight :bold} (:style-hitted options))
                       (:style-rest options)))})])))))
