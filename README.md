
Fuzzy Filter
----

> 面向文本搜索提示的模糊匹配函数与 Respo 展示组件。

Demo http://r.tiye.me/mvc-works/fuzzy-filter/

### 0.0.17 候选：正式 Calcit 0.30.1

使用者影响：CLI 与 `@calcit/procs` 一起升级到正式 **0.30.1**，同步依赖图为
Reel0.6.41、UI0.8.0、Respo0.16.124、JS-FFI0.2.5。请重新安装模块、生成JS并刷新，
不要混装旧alpha缓存；候选tag未发布前不要用main/hash代替。
相对0.0.16不改Snapshot、公开匹配算法/Map返回格式、Unicode语义或Demo存档格式/key。
本轮以all-defs替代手写namespace清单，保留完整strict、原3项native及7项Node测试、
README示例门禁、COS action内置verify和原前端部署路径。不新增验证脚本、预算或兼容强转。
正式图的CI和实际Demo验收以对应PR结果为准，库绿色不代表所有消费者已完成迁移。

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

当前候选配对 CLI / `@calcit/procs` **0.30.1**，模块准备正式 patch **0.0.17**。
共享模块固定上述正式 tag，不使用 main/hash；下文0.0.16的类型/交互迁移说明属于已发布历史。
须通过干净 CI、实际审查和合并后 main CI，再发布新 tag。
仍使用 `calcit-lang/js-ffi` 的类型化浏览器适配器处理挂载节点、本地存储和定时器。仅使用 `calcit.cirru`、`deps.cirru`，不要恢复或提交旧的 `compact.cirru`、`package.cirru`；CI 也会拒绝被 Git 忽略但仍存在的旧文件。运行以下命令验证 Calcit 测试及生成的 JavaScript：

```bash
caps --strict --ci
calcit calcit.cirru --check-only --all-defs
calcit calcit.cirru test --require-match
calcit calcit.cirru js
node --test scripts/fuzzy-filter.test.mjs
```

直接与传递依赖收敛为 JS-FFI 0.2.5、Respo 0.16.124、UI 0.8.0、Reel 0.6.41。
本轮不执行本地 Caps；本地复用模块不替代独立 CI 的 strict 安装。
浏览器入口显式声明 `mode: js` / `target: browser`，all-defs覆盖全部定义，包含业务和元数据命名空间。
以下为历史0.0.16（CLI/procs alpha.5）的迁移与验收记录，不作为0.0.17的新验收结果：
沿用 0.0.15 的 Unicode 字符语义，核心匹配可在 native/JS 两端执行，本轮不修改其公开算法或返回格式。
Demo 内部改用真实 Store、Op、State/Record，字段读取不再每次渲染重复解码；
移除旧 Reel 四参数 Dynamic 桥接，派发、控制和刷新直接走正式 typed API。
存档入口统一检查旧 Map，保存仍写原 Map 格式和原 key；公开匹配函数仍返回原来的 Map/chunks 格式。
renderer 的真实 Dynamic 入口先检查 Enum，输入回调使用真实 Map/dispatch 合同并返回 Unit。
热刷新保留原 watch/cache/reel/HUD 顺序。
输入测试仍使用框架 `event->edn` 构造实际事件 Map，不伪造名义 RespoEvent。
公开匹配结果和 UI 状态树仍保留真实异构数据边界；不把它们冒称全部静态闭合，不放宽或新增预算。
原 3 项 native、7 项 Node 回归和全部断言保留；Node 渲染夹具改用真实 typed Reel，操作按实际 dispatch 解码。
额外一次性比较了 288 组原 0.30.0 的 Unicode/空查询结果，公开匹配行为完全一致；没有添加新的验证脚本。
真实隔离 localhost 页面已验收中文/emoji 输入、匹配成功/失败和刷新恢复，无 console error/warn；
仅使用合成内容，页面与 Vite 已关闭。本轮未专门操作 HMR 或 devtools 控制面板。

### Frontend deployment

前端生产构建通过 `VITE_BASE_URL` 配置 COS 路径；本地未设置时仍使用相对路径：

```bash
VITE_BASE_URL=https://cos-sh.tiye.me/mvc-works/fuzzy-filter/ yarn build
```

上传校验使用正式 COS Action v1.2.0 的内置 verify 配置，通过
`public-base-url` 启用，不添加额外 CDN 校验脚本。Action 固定到该正式版本
的精确正式 tag。原共享字体、图标与服务器部署路径不变。

PR 预览路径为 `mvc-works/fuzzy-filter/pr/<number>/<run-id>/<attempt>/`，
每次运行和重试隔离，生产前缀不变。每个 PR 及生产使用独立队列，保留等待
任务，不取消正在上传的任务。

删除旧的本地 CDN 重复检查脚本，上传成功仅由 Action 内置公开校验确认。
业务测试适配新版 ChildPair/RenderNode 和完整 Storage 接口，原输入及匹配断言保留。
历史 0.28.0 的 `KeyboardEventHost` 阻塞不再作为本轮结论；以上游最新实际 strict 结果为准。

### License

MIT
