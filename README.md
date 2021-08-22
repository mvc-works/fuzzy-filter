
Fuzzy Filter
----

> filter function for better intuitions.

Demo http://r.tiye.me/mvc-works/fuzzy-filter/

### Usage

```cirru
ns your-app
  :require
    fuzzy-filter.core :refer $ parse-by-letter parse-by-word
    fuzzy-filter.comp.visual :refer $ comp-visual
```

```cirru
parse-by-letter "this and that to search" "that search"

; => {:matches? false, :chunks [[:hit "th"] [:rest "is "] [:hit "a"] [:rest "nd "] [:hit "t"] [:space "h"] [:rest "at to "] [:hit "searc"] [:rest "h"] [:missed "g"]], :text "this and that to search"}

parse-by-word "|this and that to search" "|that searcH"
; => {:matches? false, :chunks [[:rest "this and "] [:hit "that"] [:missed "searcH"]], :text "this and that to search"}

comp-visual (:sequences result) {}
  :style-rest $ {}
    :color (hsl 0 0 70)
```

```cirru
:style-base
:style-hit
:style-rest
```

### Workflow

Workflow https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT
