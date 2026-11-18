# 坏血动作 MOD（Dying Light 1）

把《消逝的光芒：坏血》的小刀蓄力三连击、丢刀动作搬进《消逝的光芒 1》，并附带一套「类坏血」HUD。

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

- **小刀蓄力三连击**：三段挥击 + 收尾转刀（坏血 `m_fpp_knife_charge_attack_3hit`），只影响小刀/短刀类，
  其它单手武器（砍刀/斧/水管）保持原版；
- **丢刀（投掷）**：坏血 31 帧快速投掷，出手帧沿用原版姿势，刀直着飞、有伤害；
- **钩爪**：保持原版动作（用原版投掷片段的逐字节拷贝，测试期间发现会被投掷动作污染，已修）；
- **第三人称**：同步替换 TPP 投掷与三连击片段；
- **蓄力 3 倍伤害**：61→62 把刀 `Trick("ChargeAttack") { DamageMultiplier(3.0); }`，
  以 DIDE 自带那份 `tricky_weapons.scr` 为基线追加，不覆盖 DIDE 的其它配置。

## 安装

1. 需要 **DIDE**（`dsound.dll` + `dide_mod.ini`，自定义包功能）；
2. 双击 `坏血动作MOD\一键安装.bat`（自动找游戏目录、备份、替换 rpack、合并伤害脚本）；
3. `类坏血UI\hud.XUI` 放到 `DW\Data\` 对应位置（或按你原来的 UI mod 方式安装）。

## 已知限制

- 同一目标一次攻击只结算 1 次伤害（DL1 引擎限制：坏血靠 `PAUSE/UNPAUSE_GIVE_DAMAGE`，DL1 没这两个事件），
  所以用 3 倍伤害近似"三段伤害"；
- 第一人称连招的机位/持刀骨与坏血骨架命名不同，移植时做过专门处理，第三人称完全正常；
- 联机时只影响本地表现与伤害数值。

## 卸载

`坏血动作MOD\一键卸载.bat`，会还原 rpack、`Data4.pak` 与 `dide_mod.ini`。
