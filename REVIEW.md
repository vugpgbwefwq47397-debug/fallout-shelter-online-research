# 发布范围 / Distribution scope

**辐射避难所online学习研究版** / Fallout Shelter Online — Study & Research Edition

中文介绍：辐射避难所Online非官方安卓离线学习研究版，用于研究居民培养、阵容搭配与战斗机制，提供安装包、版本记录及更新说明，持续更新。目前已实现全满资源、角色满勋满级、本地木桩对战、本地5V5 PVP模拟、本地NVN PVP模拟，后续会有功能更新。

English description: An unofficial offline Android research edition of Fallout Shelter Online for studying resident progression, team composition and combat mechanics. Provides installation packages, version history and update notes, with ongoing updates. Current features include fully stocked resources, residents at maximum level and medal rank, local training-dummy battles, local 5v5 PvP simulation and local N-vs-N PvP simulation. More features are planned.

本仓库提供说明、版本清单及安装包合并工具；安装包分卷通过Releases发布。

预览版5.24.50，果盘资源5.24.50，本地缓存52450.20261103.1。更新路径为updates/preview.json和updates/stable.json；当前不联网自动更新或执行远程脚本。

第一层封装使用去调试Lua5.3字节码、载荷SHA-256、外置代码入口限制和APK签名。不能保证无法反编译、重签名或修改内存、存档及公共缓存。详见[验收记录](docs/ACCEPTANCE.md)。
