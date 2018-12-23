
Fuzzy Filter
----

> filter function for better intuitions.

Demo http://repo.mvc-works.org/fuzzy-filter/

### Usage

[![Clojars Project](https://img.shields.io/clojars/v/mvc-works/fuzzy-filter.svg)](https://clojars.org/mvc-works/fuzzy-filter)

```edn
[mvc-works/fuzzy-filter "0.0.6"]
```

```edn
[fuzzy-filter.core :refer [parse-by-letter parse-by-word]]
[fuzzy-filter.comp.visual :refer [comp-visual]]
```

```clojure
(parse-by-letter "this and that to search" "that search")
; => {:matches? false, :chunks [[:hit "th"] [:rest "is "] [:hit "a"] [:rest "nd "] [:hit "t"] [:space "h"] [:rest "at to "] [:hit "searc"] [:rest "h"] [:missed "g"]], :text "this and that to search"}

(parse-by-word "this and that to search" "that searcH")
; => {:matches? false, :chunks [[:rest "this and "] [:hit "that"] [:missed "searcH"]], :text "this and that to search"}

(comp-visual (:sequences result) {:style-rest {:color (hsl 0 0 70)}}))))
```

```clojure
:style-base
:style-hit
:style-rest
```

### Workflow

Workflow https://github.com/mvc-works/calcit-workflow

### License

MIT
