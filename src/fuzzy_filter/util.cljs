
(ns fuzzy-filter.util )

(defn get-env! [property] (aget (.-env js/process) property))
