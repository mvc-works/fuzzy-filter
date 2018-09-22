
(ns fuzzy-filter.core )

(defn resolve-text
  ([text query]
   (let [results (resolve-text [] (seq text) (seq query))]
     {:result (not (some (fn [x] (= :missed (first x))) results)), :sequences results}))
  ([acc xs ys]
   (if (empty? xs)
     (if (empty? ys) acc (conj acc [:missed (apply str ys)]))
     (if (empty? xs)
       (conj acc [:missed (apply str ys)])
       (if (= (first xs) (first ys))
         (recur (conj acc [:hitted (first xs)]) (rest xs) (rest ys))
         (if (= " " (first ys))
           (recur (conj acc [:space (first xs)]) (rest xs) (rest ys))
           (recur (conj acc [:rest (first xs)]) (rest xs) ys)))))))
