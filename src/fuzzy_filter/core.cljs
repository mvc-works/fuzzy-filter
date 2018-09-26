
(ns fuzzy-filter.core (:require [clojure.string :as string]))

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

(defn parse-by-letter
  ([text query]
   (let [results (conflate-chunks (parse-by-letter [] (seq text) (seq query)))]
     {:matches? (not (some (fn [x] (= :missed (first x))) results)),
      :chunks results,
      :text text}))
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

(defn parse-by-word
  ([text query]
   (let [result (parse-by-word
                 []
                 text
                 (filter (fn [x] (not (string/blank? x))) (string/split query " ")))]
     {:matches? (not (some (fn [x] (= :missed (first x))) result)),
      :chunks result,
      :text text}))
  ([acc text ys]
   (if (empty? ys)
     (if (string/blank? text) acc (conj acc [:rest text]))
     (let [y0 (first ys), p (.indexOf text y0)]
       (cond
         (pos? p)
           (recur
            (conj acc [:rest (subs text 0 p)] [:hitted y0])
            (subs text (+ p (count y0)))
            (rest ys))
         (zero? p) (recur (conj acc [:hitted y0]) (subs text (count y0)) (rest ys))
         :else (conj acc [:missed y0]))))))
