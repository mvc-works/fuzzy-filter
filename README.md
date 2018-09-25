
Fuzzy Filter
----

> filter function for better intuitions.

Demo http://repo.mvc-works.org/fuzzy-filter/

### Usage

[![Clojars Project](https://img.shields.io/clojars/v/mvc-works/fuzzy-filter.svg)](https://clojars.org/mvc-works/fuzzy-filter)

```edn
[mvc-works/fuzzy-filter "0.0.2"]
```

```edn
[fuzzy-filter.core :refer [resolve-text]]
[fuzzy-filter.comp.visual :refer [comp-visual]]
```

```clojure
(resolve-text "content to query" "query")
; => {:matches? true, :chunks [[:rest "content to "] [:hitted "query"]] :text "content to query"}

(comp-visual (:sequences result) {:style-rest {:color (hsl 0 0 70)}}))))
```

```clojure
:style-base
:style-hitted
:style-rest
```

### Workflow

Workflow https://github.com/mvc-works/calcit-workflow

### License

MIT
