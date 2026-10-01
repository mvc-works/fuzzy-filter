
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

项目使用 Calcit 0.27.0 与 `calcit-lang/js-ffi` 的类型化浏览器适配器处理挂载节点、本地存储和定时器。仅使用 `calcit.cirru`、`deps.cirru`，不要恢复或提交旧的 `compact.cirru`、`package.cirru`；CI 也会拒绝被 Git 忽略但仍存在的旧文件。运行以下命令验证 Calcit 测试及生成的 JavaScript：

```bash
caps --ci
calcit calcit.cirru --check-only
calcit calcit.cirru test --require-match
calcit calcit.cirru js
node --test scripts/fuzzy-filter.test.mjs
```

当前直接 js-ffi 版本比 Respo 的传递请求更新，Caps 会报告版本冲突；尚不宣称 `caps --strict --ci` 通过。浏览器入口显式声明 `mode: js` / `target: browser`，公共定义检查覆盖全部 7 个业务命名空间。输入回调接收两个参数，读取 `RespoEvent` 字段并派发单参数 Enum。

### Frontend deployment

前端生产构建通过 `VITE_BASE_URL` 配置 COS 路径；本地未设置时仍使用相对路径：

```bash
VITE_BASE_URL=https://cos-sh.tiye.me/mvc-works/fuzzy-filter/pr/30/ yarn build
```

上传校验使用 COS Action 内置 verify 配置，不添加额外 CDN 校验脚本。原共享字体、图标与服务器部署路径不变。

### License

MIT
