# 更新清单约定 / Update manifest contract

发布版本号直接采用本次同步的官方资源版本号，如`5.24.50`；本地缓存号由资源版、构建日期及序号构成，用来区分同官方版本下的本地修订。预览/稳定状态由发布渠道标识。

`updates/preview.json` 和 `updates/stable.json` 保留稳定路径。未来清单中的附件条目需包含文件名、字节数、SHA-256及HTTPS下载地址；完整APK另记录签名证书指纹。当前不启用自动更新。

更新仅接受完整签名APK。此路径不提供远程Lua、DLL或任意脚本执行入口。发布文件保持不可变，修订通过新版本、新缓存号和新附件交付。

Future manifests must describe immutable binary artifacts with filename, byte count, SHA-256 and HTTPS URL. Full APKs must also identify their signing certificate. These reserved paths are metadata only; they do not enable remote code execution or automatic updates.
