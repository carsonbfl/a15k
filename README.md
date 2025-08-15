# 🧪⇄ Anarchy 15000
**A15K** is a distance-based progression system for Minecraft that locks building freedom and scales hostile mobs based on how far you travel from spawn.  
Additionally, players drop exact experience levels in shards, and enchants can be ascended beyond normal limits.

Your **player level** determines your maximum travel range — go too far without enough XP, and you’ll be forced into **Adventure Mode**.  
Built for worlds meant to last **thousands of hours**, it introduces a **risk–reward** system that grows with your ambition.

---

## 🌍 Level Progression
- **Overworld:** 1 required level per **120 blocks** from spawn.  
- **Nether:** 1 required level per **15 blocks** from spawn.  
- **The End:** Same scaling as the Overworld, but **starts at level 15,000**.

---

## 💎 Experience Shards & XP Transfer

### **Player Deaths**
- Above level 15, players drop **XP Shards** containing the exact XP value (in points) they had.  
- Due to the **15k soft cap** in Minecraft’s XP math and scoreboard arithmetic, players over **level 15,000** will only drop shards containing **15,000 levels worth of XP** (1,010,064,720 points).

### **Mob Kills**
- Hostile mobs drop **XP Shards** based on the **local required level** of the area where they were killed (15 points per level).

---

## 🛡️ Mob Scaling
Hostile mobs scale their attributes based on the **required level** at their spawn location:

- Armor  
- Armor Toughness  
- Attack Damage  
- Attack Knockback  
- Movement Speed  

---
## ✨ Enchantment Ascension

**Prerequisites**
- Have **experience levels** (at least 1).  
- Hold an **enchanted item/tool** in your **main hand**.  
- **Sneak** on an Enchantment Table to begin.

**How it works (1 game tick)**
1. System scans your item’s enchants **in order**.
2. For each enchantment with level **x**, it rolls a die:  
   **n = x³ + 15** sides.  
   - **Success:** enchant is **+1 level**.  
   - **Fail:** no change.  
3. **Every check consumes 1 roll** (1 XP level) whether it succeeds or fails.  
4. Continues until all enchants are processed.

**Notes**
- All rolls for that activation are consumed during the process.  
- Only **whitelisted enchants** are eligible (listed below).  
- Ascended items are **lore-marked** and **cannot be ascended again** (e.g., *“Ascended at Level X”*).

# Enchantment Groups (Max Level Value → Enchants)

3:
  - minecraft:depth_strider

4:
  - minecraft:breach

5:
  - minecraft:lure
  - minecraft:quick_charge
  - minecraft:swift_sneak

7:
  - minecraft:feather_falling

10:
  - minecraft:fire_protection
  - minecraft:projectile_protection

14:
  - minecraft:frost_walker

20:
  - minecraft:protection

127:
  - minecraft:loyalty
  - minecraft:piercing

255:
  - minecraft:blast_protection
  - minecraft:efficiency
  - minecraft:fire_aspect
  - minecraft:fortune
  - minecraft:knockback
  - minecraft:looting
  - minecraft:luck_of_the_sea
  - minecraft:power
  - minecraft:punch
  - minecraft:respiration
  - minecraft:soul_speed
  - minecraft:sweeping_edge
  - minecraft:unbreaking
  - minecraft:density
  - minecraft:wind_burst

2147483647:
  - minecraft:bane_of_arthropods
  - minecraft:impaling
  - minecraft:sharpness
  - minecraft:smite
  - minecraft:thorns

---
## 📊 Commands

### **View Stats**  
`/trigger a15k_stats`  
Shows:
- Current level & local required level  
- Approximate total XP points  
- Mob scaling values for your location  
- Disclaimer if above level 15,000  

### **Toggle Action Bar**  
`/trigger a15k_bar`  
Toggles an action bar showing:
- Required level  
- Distance from spawn  
