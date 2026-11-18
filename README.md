# 坏血动作 MOD for Dying Light 1

把《消逝的光芒：坏血》(Bad Blood) 的小刀**蓄力三连击**、**丢刀**动作移植进《消逝的光芒 1》，
另附一套**类坏血 HUD**。

## 下载

- **推荐**：右侧 [Releases](../../releases) → 下载 `坏血mod.zip`（完整包，212.7 MB）
- 如果 Releases 打不开：本目录里的 `parts\坏血mod.zip.001~003` 是同一个包的分卷，
  三个都下载到同一文件夹，双击 `合并.bat` 得到 `坏血mod.zip`（校验 SHA256：
  `84C1821D3F48FA2740F267B158EFA76EAB13B8865A3C05BE07A3738A99A26E26`）

## 包含内容

```
坏血动作MOD\
  一键安装.bat / 一键卸载.bat
  Install.ps1 / Uninstall.ps1
  payload\
    common_anims_PC.rpack        动画包（替换 DW\Data\common_anims_PC.rpack）
    scripts\tricky_weapons.scr   小刀蓄力 3 倍伤害（合并进 DIDE 的 Game_Mods\Data4.pak）
类坏血UI\
  hud.XUI                        类坏血 HUD
使用说明.txt
```

## 功能

| 功能 | 说明 |
|---|---|
| 小刀蓄力三连击 | 三段挥击 + 收尾转刀，**只影响小刀/短刀**，砍刀/斧/水管保持原版 |
| 丢刀 | 坏血 31 帧快速投掷，出手帧沿用原版姿势，刀直飞且有伤害 |
| 钩爪 | 保持原版动作（用原版投掷片段逐字节拷贝，避免被投掷动作污染） |
| 第三人称 | 同步替换 TPP 投掷 / 三连击片段 |
| 3 倍蓄力伤害 | 62 把刀 `Trick("ChargeAttack") { DamageMultiplier(3.0); }`，以 DIDE 的 `tricky_weapons.scr` 为基线追加 |

## 安装

1. 需要 **DIDE**（`dsound.dll` + `dide_mod.ini`，自定义包功能）；
2. 双击 `坏血动作MOD\一键安装.bat`（自动定位游戏目录、备份、替换 rpack、合并伤害脚本）；
3. `类坏血UI\hud.XUI` 按你原有的 UI mod 方式放到 `DW\Data\` 下。

## 已知限制

- 同一目标一次攻击只结算 1 次伤害（DL1 引擎没有坏血的 `PAUSE/UNPAUSE_GIVE_DAMAGE` 事件），
  所以用 3 倍伤害近似"三段伤害"；
- 第一人称连招的机位/持刀骨与坏血骨架命名不同，移植时做过专门处理，第三人称完全正常；
- 联机时只影响本地表现与伤害数值。

## 卸载

`坏血动作MOD\一键卸载.bat`：还原 rpack、`Data4.pak` 与 `dide_mod.ini`。
