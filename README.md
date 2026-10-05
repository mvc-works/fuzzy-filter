
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
VITE_BASE_URL=https://cos-sh.tiye.me/mvc-works/fuzzy-filter/ yarn build
```

上传校验使用正式 COS Action v1.2.0 的内置 verify 配置，通过
`public-base-url` 启用，不添加额外 CDN 校验脚本。Action 固定到该正式版本
的已审查提交。原共享字体、图标与服务器部署路径不变。

PR 预览路径为 `mvc-works/fuzzy-filter/pr/<number>/<run-id>/<attempt>/`，
每次运行和重试隔离，生产前缀不变。每个 PR 及生产使用独立队列，保留等待
任务，不取消正在上传的任务。

本轮仅更新 COS/CDN，不改变当前 Calcit 0.27.0、既有模块、源码、锁文件或
原类型门禁与业务测试。独立 0.28.0 候选仍被共享 JS-FFI 的
`KeyboardEventHost` 类型断言阻塞；COS 配置成功不代表完整 Calcit 升级完成。

### License

MIT
