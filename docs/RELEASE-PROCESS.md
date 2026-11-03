# 版本日志维护约定 / Release history

每次发新包都需同时记录更新内容与对应截图；保留旧记录，按新到旧排列，不覆盖历史版本说明。

1. 发布版本号使用当前实际同步的官方版本号。
2. 新建`docs/releases/版本号.md`，写明记录日期、发布状态、本地缓存号及简短中英文更新说明。
3. 将本次功能截图放入`assets/screenshots/`，文件名包含版本号；版本页附截图及说明。
4. 在`CHANGELOG.md`顶部追加本次条目，链接到该版本页，并展示本次截图。首页保留最新版本摘要和版本页入口。
5. GitHub Release使用相同更新摘要并附版本页链接及截图，保留安装说明和已知限制。
6. 发布后补充实际Release链接和发布日期。未发布时明确保持预览/待发布状态，不编造发布记录。
7. 同官方版本修订时更新本地缓存号，在该版本页追加带日期和缓存号的修订记录；已发布附件保持不变。

For each new package, retain a dated, bilingual version entry with a short summary and a matching screenshot. Use the official content version as the release version. Link the entry from the changelog, homepage and GitHub Release. Keep previous entries and published artifacts unchanged; record same-version revisions using a new local cache ID.
