
(ns fuzzy-filter.core )

(defn conflate-chunks
  ([xs] (conflate-chunks [] nil xs))
  ([acc buffer xs]
   (if (empty? xs)
     (if (nil? buffer) acc (conj acc buffer))
     (let [x0 (first xs)]
       (if (nil? buffer)
         (recur acc x0 (rest xs))
         (if (= (first buffer) (first x0))
           (recur acc [(first buffer) (str (last buffer) (last x0))] (rest xs))
           (recur (conj acc buffer) x0 (rest xs))))))))

(defn resolve-text
  ([text query]
   (let [results (conflate-chunks (resolve-text [] (seq text) (seq query)))]
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
