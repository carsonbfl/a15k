# 🧪⇄ Anarchy 15000 (A15K)

**A15K** is a distance-based progression system for Minecraft that gates building freedom and scales hostile mobs based on how far you travel from spawn. Players drop exact experience **levels** in shards, and enchants can be **ascended** beyond vanilla caps.

Your **player level** determines how far you can roam — go too far without enough XP and you’re put into **Adventure Mode**. Designed for long-lived worlds with a growing risk–reward curve.

---

## 🌍 Level Progression
- **Overworld:** 1 required level per **120 blocks** from spawn  
- **Nether:** 1 required level per **15 blocks** from spawn  
- **The End:** Same scale as Overworld, but **starts at level 15,000**

> **Required Level (RL)** is computed from your distance to (0,0,0) using the scale above.

---

## 💎 Experience Shards & XP Transfer

### Player Deaths
- Above level 15, players drop **XP Shards** containing the exact XP points they had.
- Due to vanilla XP math/scoreboard limits, players over **level 15,000** drop shards capped at **15,000 levels** (**1,010,064,720 points**).

### Mob Kills
- Hostile mobs drop **XP Shards** based on the **local RL** where they were killed  
  → **15 XP points per RL**

---

## ✨ Enchantment Ascension

**Prereqs**
- Have at least **1 level**
- Hold an **enchanted item** in **main hand** (must have enchantments with level numerals ie. unbreaking III; not just mending or multishot)
- **Sneak** on an Enchantment Table

**Flow (per activation)**
1. Enchants are processed in order
2. For a level **x** enchant, roll **n = x² + 15**
   - **Success:** enchant **+1 level**
   - **Fail:** no change
3. Each check consumes **1 level**, success or fail
4. Stops after all enchants are processed; item is lore-marked and **can’t be ascended again**

> Some enchantments have "effective maxes" requiring me to impliment a cap on levels, therefore some ascensions may trigger and do nothing ie. depth strider 3 only will result in consuming all levels and no actual increment of the enchant.
> Enchants eligible for ascension and there maxes can be found in ```enchants.md```

---

## 🛡️ Hostile Mob Scaling

All scaling is driven by the **Required Level (RL)** at the mob’s **spawn location**.  
Stats are applied **once** on the mob’s first tick (the mob gets the `a15k_mob` tag) and are **not reapplied** afterward — moving the mob won’t change its stats.

### Floors (set once on spawn, then multiplied)
On spawn, these attributes are given a base **floor** so even normally-zero stats scale.  
They **also receive the multiplier** below.

- **Armor**, **Armor Toughness**, **Attack Knockback**, **Knockback Resistance**  
  **floor = `0.0015 × RL_spawn`**

> Example: at RL **225** → floor **0.3375** for each; then the multiplier applies.

### Multipliers (percent over base)
A shared multiplicative bonus applies to **all** non-zero bases — including the floored ones above — using the **spawn RL**:

- **Armor**, **Armor Toughness**, **Attack Knockback**, **Knockback Resistance**,  
  **Max Health**, **Attack Damage**, **Movement Speed**, **Flying Speed**, **Attack Speed**, **Follow Range**
- **Factor:** `f = RL_spawn / 15000` → final = **base × (1 + f)**  
  - RL **15,000** ⇒ **+100%** (double the base/floor)

> Your stats screen shows this as **“+X.Y% of base”**.

---

## 📊 Player UI & Commands

### View Stats
`/trigger a15k_stats`  
Shows:
- **Player Level**, **Total Points**, **Required Level**, **Distance** (labels underlined; white) with hover tips
- **Mob Scaling:** single **percent of base** (hover lists affected attributes)
- At ≥ **15,000**, Total Points shows a **max shard warning**

### Toggle Action Bar
`/trigger a15k_bar`  
Toggles a compact HUD:
- **Required Level**
- **Distance from spawn**

---
