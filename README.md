
Fuzzy Filter
----

> 面向文本搜索提示的模糊匹配函数与 Respo 展示组件。

Demo http://r.tiye.me/mvc-works/fuzzy-filter/

### 使用

```cirru
ns your-app
  :require
    fuzzy-filter.core :refer $ parse-by-letter parse-by-word
    fuzzy-filter.comp.visual :refer $ comp-visual
```

`parse-by-letter` 与 `parse-by-word` 返回包含 `:matches?`、`:chunks`、`:text` 的 map；`comp-visual` 接收 `:chunks` 和样式 map，而不是旧文档中的 `:sequences`。

```cirru.no-check
let
    result $ parse-by-letter |abc |ac
  comp-visual (&map:get result :chunks) $ {} (:color $ respo-ui.core/hsl 0 0 70)
```

### Workflow

Workflow https://github.com/calcit-lang/respo-calcit-workflow

### 开发验证

项目使用 Calcit 0.24.3 与 `calcit-lang/js-ffi` 的类型化浏览器适配器处理挂载节点、本地存储和定时器。运行以下命令验证 Calcit 测试及生成的 JavaScript：

```bash
caps --strict --ci
calcit calcit.cirru --check-only
calcit calcit.cirru test --require-match
calcit calcit.cirru js
node --test scripts/fuzzy-filter.test.mjs
```

### License

MIT
