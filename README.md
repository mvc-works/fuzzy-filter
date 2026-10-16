
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
  comp-visual (decode-map-as (.unwrap (get result :chunks)) $ :: 'List $ :: 'List 'Dynamic)
    {} (:color $ respo-ui.core/hsl 0 0 70)
```

### Workflow

Workflow https://github.com/calcit-lang/respo-calcit-workflow

### 开发验证

当前迁移候选配对正式 Calcit / `@calcit/procs` 0.30.0，依赖使用正式 tag，
CLI 与依赖不使用 alpha/hash，模块自身版本号暂不更改、不创建新 tag。
仍使用 `calcit-lang/js-ffi` 的类型化浏览器适配器处理挂载节点、本地存储和定时器。仅使用 `calcit.cirru`、`deps.cirru`，不要恢复或提交旧的 `compact.cirru`、`package.cirru`；CI 也会拒绝被 Git 忽略但仍存在的旧文件。运行以下命令验证 Calcit 测试及生成的 JavaScript：

```bash
caps --strict --ci
calcit calcit.cirru --check-only
calcit calcit.cirru test --require-match
calcit calcit.cirru js
node --test scripts/fuzzy-filter.test.mjs
```

直接与传递依赖已收敛为 JS-FFI 0.2.3、Respo 0.16.120、UI 0.7.39、Reel 0.6.36；
本地只读正式模块检查不替代干净 CI 的 strict Caps 安装。
浏览器入口显式声明 `mode: js` / `target: browser`，公共定义检查覆盖全部 7 个业务命名空间。输入回调接收两个参数，读取 `RespoEvent` 字段并派发单参数 Enum。

15 处程序和 2 处原测试 Map 读取改用公开 `get`/Option，保留缺失和存在 nil 的结果。
在实际使用处检查 store、文本、chunks、cursor 和恢复的 Map；不把开放值断言成已验证类型。
词匹配改用 Calcit `str-find-index`，与新版 Unicode 字符切片保持一致，
修复 emoji 出现在命中词前时的分段错位；旧版拆分代理项的结果不再保留。
该核心路径不再依赖 JS FFI 或 Number 强转，可以在 native/JS 两端执行。
`dispatch!` 返回 Unit，不泄漏新状态。原持久化 key、解析结果字段和界面行为不变。
完整 strict 仍被正式 Reel 的 `comp-records` 与 `reel-updater` List 证明阻塞，
因此当前候选未提交 PR、未合并、未发版、未部署；普通检查/测试成功不替代该门禁。
本地验收：全部 202 个定义和 7 个命名空间的 20 个公开定义通过；
原 2 项定义测试加 1 项实际 Unicode 回归、原 7 项 Node 业务回归通过。
新旧 288 组匹配差分中 282 组相同，6 组差异均涉及 emoji，体现新版 Unicode
字符语义，而不是声称所有输出逐字一致。生产 CDN 构建、immutable 安装、文档与格式检查通过。
仍有 19 处 schema Dynamic（11 个定义），未宣称类型债务清零。
0.30.1-alpha.4 仅对核心 6 个定义做静态探测通过，未更改配对运行时或声称完整 0.30.1 验收。

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

删除旧的本地 CDN 重复检查脚本，上传成功仅由 Action 内置公开校验确认。
业务测试适配新版 ChildPair/RenderNode 和完整 Storage 接口，原输入及匹配断言保留。
历史 0.28.0 的 `KeyboardEventHost` 阻塞不再作为本轮结论；以上游最新实际 strict 结果为准。

### License

MIT
