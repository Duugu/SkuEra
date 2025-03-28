SkuDB.objectKeys = {
   ['name'] = 1, -- string
   ['questStarts'] = 2, -- table {questID(int),...}
   ['questEnds'] = 3, -- table {questID(int),...}
   ['spawns'] = 4, -- table {[zoneID(int)] = {coordPair(floatVector2D),...},...}
   ['zoneID'] = 5, -- guess as to where this object is most common
   ['factionID'] = 6, -- faction restriction mask (same as spawndb factionid)
}

local objectKeys = SkuDB.objectKeys
SkuDB.SoD.objectDataTBC = {
   --[31] = {"Old Lion Statue",{248,249},{94},{[44]={{84.49,46.83}}},44},
   [386675] = {
      [objectKeys.name] = "Buried Treasure",
      [objectKeys.zoneID] = 1,
      [objectKeys.spawns] = {
          [1] = {{47, 43.7},},
          [12] = {{80.4, 79.3},},
          [14] = {{62.1, 94.8},},
          [85] = {{52.9, 54.1},},
          [141] = {{55.3, 90.9},},
      },
  },
  [386691] = {
      [objectKeys.name] = "Library Book",
      [objectKeys.zoneID] = 1537,
      [objectKeys.spawns] = {
          [1537] = {{76, 10.4},{76.1, 10.9},},
      },
  },
  [386759] = {
      [objectKeys.name] = "Library Book",
      [objectKeys.zoneID] = 12,
      [objectKeys.spawns] = {
          [12] = {{65.4, 70.1},},
      },
  },
  [386777] = {
      [objectKeys.name] = "Dusty Chest",
      [objectKeys.zoneID] = 1519,
      [objectKeys.spawns] = {
          [1519] = {{61.4, 28.9},{61.9, 29.3},},
      },
  },
  [387446] = {
      [objectKeys.name] = "Spell Notes",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [387466] = {
      [objectKeys.name] = "Rusty Lockbox",
      [objectKeys.zoneID] = 1,
      [objectKeys.spawns] = {
          [1] = {{47, 52},},
          [12] = {{46.2, 62.1},},
          [14] = {{53.8, 27.2},},
      },
  },
  [387477] = {
      [objectKeys.name] = "Defias Stashbox",
      [objectKeys.zoneID] = 12,
      [objectKeys.spawns] = {
          [12] = {{52.4, 52},{52.6, 51.8},},
      },
  },
  [392029] = {
      [objectKeys.name] = "Swordsman's Reward",
      [objectKeys.zoneID] = 1,
      [objectKeys.spawns] = {
          [1] = {{53.3, 47.2},{53.4, 47.7},{53.5, 47.6},{54, 47.4},},
          [12] = {{22.1, 73.8},{22.5, 73.2},{25.3, 70.1},{25.5, 70.1},{29.8, 74.8},{29.9, 73.3},{35.9, 80.6},{36.1, 80.4},{38, 75.4},{38.1, 75.5},{38.6, 75.6},{38.7, 75.1},{40.6, 74.4},{40.6, 74.7},},
          [14] = {{35.9, 47.8},{40.9, 49},{41, 49.5},{41.5, 49},{55.1, 39.5},{55.9, 38.3},{56.3, 27},{56.7, 21.6},{56.8, 21.3},},
          [141] = {{39.8, 37.8},{40.1, 69.8},{43.8, 76.9},{62.6, 71.9},},
          [215] = {{37.9, 54.7},{40.7, 53.1},{40.7, 53.8},{45.5, 37.1},{52, 39.2},},
      },
  },
  [397987] = {
      [objectKeys.name] = "Kobold Stashbox",
      [objectKeys.zoneID] = 12,
      [objectKeys.spawns] = {
          [12] = {{50.6, 27.2},},
      },
  },
  [402215] = {
      [objectKeys.name] = "Charred Note",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [402537] = {
      [objectKeys.name] = "Beast Track",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [402572] = {
      [objectKeys.name] = "Beast Track",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [402573] = {
      [objectKeys.name] = "Beast Track",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [403041] = {
      [objectKeys.name] = "Blasting Supplies",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [403102] = {
      [objectKeys.name] = "Bristleback Loot Cache",
      [objectKeys.zoneID] = 215,
      [objectKeys.spawns] = {
          [215] = {{61.6, 76},},
      },
  },
  [403105] = {
      [objectKeys.name] = "Windfury Cone",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [403718] = {
      [objectKeys.name] = "Prairie Flower",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [404352] = {
      [objectKeys.name] = "Artifact Storage",
      [objectKeys.zoneID] = 215,
      [objectKeys.spawns] = {
          [215] = {{31.6, 49.4},{31.6, 49.5},},
      },
  },
  [404433] = {
      [objectKeys.name] = "Lunar Chest",
      [objectKeys.zoneID] = 141,
      [objectKeys.spawns] = {
          [141] = {{52.8, 78.8},},
          [215] = {{35.7, 69.6},},
      },
  },
  [404695] = {
      [objectKeys.name] = "Waterlogged Stashbox",
      [objectKeys.zoneID] = 14,
      [objectKeys.spawns] = {
          [14] = {{43, 54.4},{43, 54.5},},
      },
  },
  [404830] = {
      [objectKeys.name] = "Dusty Chest",
      [objectKeys.zoneID] = 1637,
      [objectKeys.spawns] = {
          [1637] = {{55.9, 44.7},},
      },
  },
  [404846] = {
      [objectKeys.name] = "Beast Track",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [404847] = {
      [objectKeys.name] = "Beast Track",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [404888] = {
      [objectKeys.name] = "Beast Track",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [404911] = {
      [objectKeys.name] = "Hidden Cache",
      [objectKeys.zoneID] = 14,
      [objectKeys.spawns] = {
          [14] = {{43.2, 69.6},},
      },
  },
  [404941] = {
      [objectKeys.name] = "Relic Coffer",
      [objectKeys.zoneID] = 85,
      [objectKeys.spawns] = {
          [85] = {{52.5, 25.8},},
      },
  },
  [405149] = {
      [objectKeys.name] = "Mural of Ta'zo",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [405201] = {
      [objectKeys.name] = "Shipwreck Cache",
      [objectKeys.zoneID] = 85,
      [objectKeys.spawns] = {
          [85] = {{66.6, 24.6},},
      },
  },
  [405628] = {
      [objectKeys.name] = "Frostmane Loot Cache",
      [objectKeys.zoneID] = 1,
      [objectKeys.spawns] = {
          [1] = {{30.8, 80.1},},
      },
  },
  [405633] = {
      [objectKeys.name] = "Rockjaw Footlocker",
      [objectKeys.zoneID] = 1,
      [objectKeys.spawns] = {
          [1] = {{26.8, 72.6},},
      },
  },
  [405827] = {
      [objectKeys.name] = "Apothecary Notes",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [405879] = {
      [objectKeys.name] = "Apothecary Society Primer",
      [objectKeys.zoneID] = 85,
      [objectKeys.spawns] = {
          [85] = {{59.4, 52.3},{59.5, 52.3},},
      },
  },
  [405901] = {
      [objectKeys.name] = "Beast Track",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [405902] = {
      [objectKeys.name] = "Beast Track",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [405903] = {
      [objectKeys.name] = "Beast Track",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [405946] = {
      [objectKeys.name] = "Dusty Chest",
      [objectKeys.zoneID] = 1537,
      [objectKeys.spawns] = {
          [1537] = {{51.9, 12.8},},
      },
  },
  [406006] = {
      [objectKeys.name] = "Idol",
      [objectKeys.zoneID] = 141,
      [objectKeys.spawns] = {
          [141] = {{59.7, 42.6},},
      },
  },
  [406736] = {
      [objectKeys.name] = "Lost Stash",
      [objectKeys.zoneID] = 85,
      [objectKeys.spawns] = {
          [85] = {{24.6, 59.5},{24.7, 59.4},},
      },
  },
  [407117] = {
      [objectKeys.name] = "Abandoned Snapjaw Nest",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [407120] = {
      [objectKeys.name] = "Empty Snapjaw Nest",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [407247] = {
      [objectKeys.name] = "Glade Flower",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [407289] = {
      [objectKeys.name] = "Horde Warbanner",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [407291] = {
      [objectKeys.name] = "Alliance Warbanner",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [407312] = {
      [objectKeys.name] = "Hungry Idol",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [407347] = {
      [objectKeys.name] = "Altar of Thorns",
      [objectKeys.zoneID] = 17,
      [objectKeys.spawns] = {
          [17] = {{58.2, 26.7},},
      },
  },
  [407352] = {
      [objectKeys.name] = "Gnarlpine Stash",
      [objectKeys.zoneID] = 141,
      [objectKeys.spawns] = {
          [141] = {{37.9, 82.5},},
      },
  },
  [407453] = {
      [objectKeys.name] = "Southsea Loot Stash",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [407454] = {
      [objectKeys.name] = "Gunpowder Keg",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [407457] = {
      [objectKeys.name] = "Stable Hand's Trunk",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [407505] = {
      [objectKeys.name] = "Etched Carving",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [407510] = {
      [objectKeys.name] = "Etched Carving",
      [objectKeys.zoneID] = 17,
      [objectKeys.spawns] = {
          [17] = {{45.5, 80},},
      },
  },
  [407566] = {
      [objectKeys.name] = "Goblin Tome",
      [objectKeys.zoneID] = 17,
      [objectKeys.spawns] = {
          [17] = {{62.7, 36.3},},
      },
  },
  [407708] = {
      [objectKeys.name] = "Beast Track",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [407709] = {
      [objectKeys.name] = "Beast Track",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [407710] = {
      [objectKeys.name] = "Beast Track",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [407731] = {
      [objectKeys.name] = "Stonemason's Toolbox",
      [objectKeys.zoneID] = 38,
      [objectKeys.spawns] = {
          [38] = {{46.4, 12.7},},
      },
  },
  [407732] = {
      [objectKeys.name] = "Escape Rope",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [407734] = {
      [objectKeys.name] = "Gnarlpine Cache",
      [objectKeys.zoneID] = 141,
      [objectKeys.spawns] = {
          [141] = {{43.1, 60.8},{44.1, 61.1},{44.5, 62.4},{44.5, 62.5},{44.7, 59},{44.8, 59.9},{45, 61.4},{45.3, 58.1},{45.7, 57},},
      },
  },
  [407844] = {
      [objectKeys.name] = "Libram of Blessings",
      [objectKeys.zoneID] = 38,
      [objectKeys.spawns] = {
          [38] = {{35.8, 49.4},{35.8, 49.5},},
      },
  },
  [407850] = {
      [objectKeys.name] = "Sunken Reliquary",
      [objectKeys.zoneID] = 38,
      [objectKeys.spawns] = {
          [38] = {{36.7, 91.6},{36.8, 91.4},},
      },
  },
  [407918] = {
      [objectKeys.name] = "Empty Trophy Display",
      [objectKeys.zoneID] = 38,
      [objectKeys.spawns] = {
          [38] = {{83.6, 65.4},},
      },
  },
  [407983] = {
      [objectKeys.name] = "Pile of Stolen Books",
      [objectKeys.zoneID] = 38,
      [objectKeys.spawns] = {
          [38] = {{54.2, 27},},
      },
  },
  [408004] = {
      [objectKeys.name] = "Tangled Blight Pile",
      [objectKeys.zoneID] = 38,
      [objectKeys.spawns] = {
          [38] = {{71.7, 21.4},{71.8, 21.6},},
      },
  },
  [408014] = {
      [objectKeys.name] = "Gnomish Tome",
      [objectKeys.zoneID] = 38,
      [objectKeys.spawns] = {
          [38] = {{35.6, 48.9},},
          [40] = {{52.7, 53.7},},
      },
  },
  [408718] = {
      [objectKeys.name] = "Equipment Stash",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [408799] = {
      [objectKeys.name] = "Idol of the Deep",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [408802] = {
      [objectKeys.name] = "Gnarled Harpoon",
      [objectKeys.zoneID] = 148,
      [objectKeys.spawns] = {
          [148] = {{44.1, 20.8},{47.3, 15.3},{48.3, 18},{49.2, 16.2},},
      },
  },
  [408877] = {
      [objectKeys.name] = "Coyote Feeding Ground",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [409131] = {
      [objectKeys.name] = "Rusty Chest",
      [objectKeys.zoneID] = 130,
      [objectKeys.spawns] = {
          [130] = {{45.2, 67.2},},
      },
  },
  [409144] = {
      [objectKeys.name] = "Waterlogged Captain's Chest",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [409289] = {
      [objectKeys.name] = "Strange Orb",
      [objectKeys.zoneID] = 148,
      [objectKeys.spawns] = {
          [148] = {{56.2, 26.4},{56.2, 26.5},},
      },
  },
  [409311] = {
      [objectKeys.name] = "Spear of Mannoroth",
      [objectKeys.zoneID] = 331,
      [objectKeys.spawns] = {
          [331] = {{89.4, 77},{89.5, 76.9},},
      },
  },
  [409315] = {
      [objectKeys.name] = "Shattered Orb",
      [objectKeys.zoneID] = 331,
      [objectKeys.spawns] = {
          [331] = {{89.4, 77},{89.5, 77},},
      },
  },
  [409496] = {
      [objectKeys.name] = "Scrolls",
      [objectKeys.zoneID] = 148,
      [objectKeys.spawns] = {
          [148] = {{59.6, 22.2},},
      },
  },
  [409501] = {
      [objectKeys.name] = "Dalaran Digest",
      [objectKeys.zoneID] = 130,
      [objectKeys.spawns] = {
          [130] = {{63.5, 63.1},},
      },
  },
  [409562] = {
      [objectKeys.name] = "Spellbook",
      [objectKeys.zoneID] = 40,
      [objectKeys.spawns] = {
          [40] = {{45.4, 70.4},{45.4, 70.5},},
      },
  },
  [409692] = {
      [objectKeys.name] = "Scrolls",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [409700] = {
      [objectKeys.name] = "Manual",
      [objectKeys.zoneID] = 17,
      [objectKeys.spawns] = {
          [17] = {{56.3, 8.8},},
      },
  },
  [409711] = {
      [objectKeys.name] = "Scrolls",
      [objectKeys.zoneID] = 406,
      [objectKeys.spawns] = {
          [406] = {{74.4, 85.7},},
      },
  },
  [409717] = {
      [objectKeys.name] = "Scrolls",
      [objectKeys.zoneID] = 11,
      [objectKeys.spawns] = {
          [11] = {{33.6, 47.9},},
      },
  },
  [409731] = {
      [objectKeys.name] = "Scrolls",
      [objectKeys.zoneID] = 38,
      [objectKeys.spawns] = {
          [38] = {{77.4, 14},{77.5, 14},},
      },
  },
  [409735] = {
      [objectKeys.name] = "Spellbook",
      [objectKeys.zoneID] = 10,
      [objectKeys.spawns] = {
          [10] = {{16.7, 28.4},{16.7, 28.5},},
      },
  },
  [409754] = {
      [objectKeys.name] = "Wall-Mounted Shield",
      [objectKeys.zoneID] = 44,
      [objectKeys.spawns] = {
          [44] = {{69.9, 55.7},},
      },
  },
  [409758] = {
      [objectKeys.name] = "Discarded Helm",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [409942] = {
      [objectKeys.name] = "Twin Owl Statue",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [409949] = {
      [objectKeys.name] = "Twin Owl Statue",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [410020] = {
      [objectKeys.name] = "Owl Statue",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [410034] = {
      [objectKeys.name] = "Carved Stone",
      [objectKeys.zoneID] = 10,
      [objectKeys.spawns] = {
          [10] = {{49.5, 34},},
      },
  },
  [410082] = {
      [objectKeys.name] = "Carved Stone",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [410089] = {
      [objectKeys.name] = "Owl Statue",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [410168] = {
      [objectKeys.name] = "Voodoo Pile",
      [objectKeys.zoneID] = 14,
      [objectKeys.spawns] = {
          [14] = {{68.7, 71.2},},
      },
  },
  [410220] = {
      [objectKeys.name] = "Gift of the Wisp",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [410299] = {
      [objectKeys.name] = "Arcane Secrets",
      [objectKeys.zoneID] = 130,
      [objectKeys.spawns] = {
          [130] = {{43.4, 41.2},},
      },
  },
  [410369] = {
      [objectKeys.name] = "Dead Drop",
      [objectKeys.zoneID] = 130,
      [objectKeys.spawns] = {
          [130] = {{47.1, 71.1},},
      },
  },
  [410528] = {
      [objectKeys.name] = "Ornamented Chest",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [410779] = {
      [objectKeys.name] = "Offering Box",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [410847] = {
      [objectKeys.name] = "Rusty Safe",
      [objectKeys.zoneID] = 28,
      [objectKeys.spawns] = {
          [28] = {{59.4, 84.6},},
      },
  },
  [411328] = {
      [objectKeys.name] = "Slumbering Bones",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [411348] = {
      [objectKeys.name] = "Dusty Coffer",
      [objectKeys.zoneID] = 10,
      [objectKeys.spawns] = {
          [10] = {{26, 31},},
      },
  },
  [411620] = {
      [objectKeys.name] = "Altar of Teleportation",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [411674] = {
      [objectKeys.name] = "Prophecy of a King's Demise",
      [objectKeys.zoneID] = 130,
      [objectKeys.spawns] = {
          [130] = {{65.8, 23.6},},
      },
  },
  [411710] = {
      [objectKeys.name] = "Demonic Reliquary",
      [objectKeys.zoneID] = 44,
      [objectKeys.spawns] = {
          [44] = {{80.2, 49.4},{80.2, 49.5},},
      },
  },
  [411715] = {
      [objectKeys.name] = "Bough of Altek",
      [objectKeys.zoneID] = 148,
      [objectKeys.spawns] = {
          [148] = {{56.3, 26.4},{56.3, 26.5},},
      },
  },
  [414532] = {
      [objectKeys.name] = "Clliffspring Chest",
      [objectKeys.zoneID] = 148,
      [objectKeys.spawns] = {
          [148] = {{56.2, 34.9},},
      },
  },
  [414624] = {
      [objectKeys.name] = "Lighthouse Stash",
      [objectKeys.zoneID] = 148,
      [objectKeys.spawns] = {
          [148] = {{32.8, 37.1},},
      },
  },
  [414646] = {
      [objectKeys.name] = "Remnant",
      [objectKeys.zoneID] = 148,
      [objectKeys.spawns] = {
          [148] = {{30.4, 48},},
      },
  },
  [414658] = {
      [objectKeys.name] = "Rubble",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
  [414663] = {
      [objectKeys.name] = "Shatterspear Idol",
      [objectKeys.zoneID] = 148,
      [objectKeys.spawns] = {
          [148] = {{59.2, 22.6},},
      },
  },
  [414713] = {
      [objectKeys.name] = "Storage Locker",
      [objectKeys.zoneID] = 267,
      [objectKeys.spawns] = {
          [267] = {{79.7, 40.9},},
      },
  },
  [414904] = {
      [objectKeys.name] = "Shrine",
      [objectKeys.zoneID] = 0,
      [objectKeys.spawns] = nil,
  },
}

SkuDB.SoD.objectLookup = {
   ["enUS"] = {
      --[188284] = "Solstice Village",
      [386675] = "Buried Treasure",
      [386691] = "Library Book",
      [386759] = "Library Book",
      [386777] = "Dusty Chest",
      [387446] = "Spell Notes",
      [387466] = "Rusty Lockbox",
      [387477] = "Defias Stashbox",
      [392029] = "Swordsman's Reward",
      [397987] = "Kobold Stashbox",
      [402215] = "Charred Note",
      [402537] = "Beast Track",
      [402572] = "Beast Track",
      [402573] = "Beast Track",
      [403041] = "Blasting Supplies",
      [403102] = "Bristleback Loot Cache",
      [403105] = "Windfury Cone",
      [403718] = "Prairie Flower",
      [404352] = "Artifact Storage",
      [404433] = "Lunar Chest",
      [404695] = "Waterlogged Stashbox",
      [404830] = "Dusty Chest",
      [404846] = "Beast Track",
      [404847] = "Beast Track",
      [404888] = "Beast Track",
      [404911] = "Hidden Cache",
      [404941] = "Relic Coffer",
      [405149] = "Mural of Ta'zo",
      [405201] = "Shipwreck Cache",
      [405628] = "Frostmane Loot Cache",
      [405633] = "Rockjaw Footlocker",
      [405827] = "Apothecary Notes",
      [405879] = "Apothecary Society Primer",
      [405901] = "Beast Track",
      [405902] = "Beast Track",
      [405903] = "Beast Track",
      [405946] = "Dusty Chest",
      [406006] = "Idol",
      [406736] = "Lost Stash",
      [407117] = "Abandoned Snapjaw Nest",
      [407120] = "Empty Snapjaw Nest",
      [407247] = "Glade Flower",
      [407289] = "Horde Warbanner",
      [407291] = "Alliance Warbanner",
      [407312] = "Hungry Idol",
      [407347] = "Altar of Thorns",
      [407352] = "Gnarlpine Stash",
      [407453] = "Southsea Loot Stash",
      [407454] = "Gunpowder Keg",
      [407457] = "Stable Hand's Trunk",
      [407505] = "Etched Carving",
      [407510] = "Etched Carving",
      [407566] = "Goblin Tome",
      [407708] = "Beast Track",
      [407709] = "Beast Track",
      [407710] = "Beast Track",
      [407731] = "Stonemason's Toolbox",
      [407732] = "Escape Rope",
      [407734] = "Gnarlpine Cache",
      [407844] = "Libram of Blessings",
      [407850] = "Sunken Reliquary",
      [407918] = "Empty Trophy Display",
      [407983] = "Pile of Stolen Books",
      [408004] = "Tangled Blight Pile",
      [408014] = "Gnomish Tome",
      [408718] = "Equipment Stash",
      [408799] = "Idol of the Deep",
      [408802] = "Gnarled Harpoon",
      [408877] = "Coyote Feeding Ground",
      [409131] = "Rusty Chest",
      [409144] = "Waterlogged Captain's Chest",
      [409289] = "Strange Orb",
      [409311] = "Spear of Mannoroth",
      [409315] = "Shattered Orb",
      [409496] = "Scrolls",
      [409501] = "Dalaran Digest",
      [409562] = "Spellbook",
      [409692] = "Scrolls",
      [409700] = "Manual",
      [409711] = "Scrolls",
      [409717] = "Scrolls",
      [409731] = "Scrolls",
      [409735] = "Spellbook",
      [409754] = "Wall-Mounted Shield",
      [409758] = "Discarded Helm",
      [409942] = "Twin Owl Statue",
      [409949] = "Twin Owl Statue",
      [410020] = "Owl Statue",
      [410034] = "Carved Stone",
      [410082] = "Carved Stone",
      [410089] = "Owl Statue",
      [410168] = "Voodoo Pile",
      [410220] = "Gift of the Wisp",
      [410299] = "Arcane Secrets",
      [410369] = "Dead Drop",
      [410528] = "Ornamented Chest",
      [410779] = "Offering Box",
      [410847] = "Rusty Safe",
      [411328] = "Slumbering Bones",
      [411348] = "Dusty Coffer",
      [411620] = "Altar of Teleportation",
      [411674] = "Prophecy of a King's Demise",
      [411710] = "Demonic Reliquary",
      [411715] = "Bough of Altek",
      [414532] = "Clliffspring Chest",
      [414624] = "Lighthouse Stash",
      [414646] = "Remnant",
      [414658] = "Rubble",
      [414663] = "Shatterspear Idol",
      [414713] = "Storage Locker",
      [414904] = "Shrine",

   },
   ["deDE"] = {
      --[31] =  "Alte Löwenstatue",
      [386691] = "Bibliotheksbuch",
      [386759] = "Bibliotheksbuch",
      [386777] = "Verstaubte Kiste",
      [387446] = "Zaubernotizen",
      [387466] = "Rostige Schließkassette",
      [387477] = "Lagertruhe der Defias",
      [392029] = "Belohnung des Schwertkämpfers",
      [397987] = "Lagertruhe der Kobolde",
      [402215] = "Verkohlte Notiz",
      [402537] = "Wildtierspur",
      [402572] = "Wildtierspur",
      [402573] = "Wildtierspur",
      [403041] = "Sprengvorräte",
      [403102] = "Beutelager der Borstennacken",
      [403105] = "Windzornzapfen",
      [403718] = "Prärieblume",
      [404352] = "Artefaktlagertruhe",
      [404433] = "Mondtruhe",
      [404695] = "Durchnässte Lagertruhe",
      [404911] = "Versteckte Truhe",
      [404941] = "Reliktkasten",
      [405149] = "Wandgemälde von Ta'zo",
      [405628] = "Beutelager der Frostmane",
      [405633] = "Schließkiste der Felsenkiefer",
      [405827] = "Apothekernotizen",
      [405879] = "Fibel der Apothekervereinigung",
      [406006] = "Götze",
      [406736] = "Verlorene Kiste",
      [407117] = "Verlassenes Schnappkiefernest",
      [407120] = "Leeres Schnappkiefernest",
      [407247] = "Lichtungsblume",
      [407289] = "Kriegsbanner der Horde",
      [407291] = "Kriegsbanner der Allianz",
      [407312] = "Hungriger Götze",
      [407347] = "Altar der Dornen",
      [407352] = "Kiste der Knarzklauen",
      [407453] = "Südmeerbeutelager",
      [407454] = "Schießpulverfass",
      [407457] = "Stallburschenkoffer",
      [407510] = "Geätzte Schnitzerei",
      [407566] = "Goblinfoliant",
      [407708] = "Wildtierspur",
      [407709] = "Wildtierspur",
      [407710] = "Wildtierspur",
      [407731] = "Werkzeugkasten des Steinmetzes",
      [407734] = "Knarzklauenkiste",
      [407844] = "Segensbuchband",
      [407850] = "Versunkener Reliquienschrein",
      [407918] = "Leerer Trophäenkasten",
      [407983] = "Haufen gestohlener Bücher",
      [408004] = "Umschlungener Verseuchungsstapel",
      [408014] = "Gnomenfoliant",
      [408718] = "Ausrüstungslager",
      [408799] = "Götze der Tiefe",
      [408802] = "Knorrige Harpune",
      [408877] = "Kojotenfutterstelle",
      [409289] = "Seltsame Kugel",
      [409496] = "Schriftrollen",
      [409501] = "Dalaranauswahl",
      [409562] = "Zauberbuch",
      [409692] = "Schriftrollen",
      [409700] = "Handbuch",
      [409711] = "Schriftrollen",
      [409731] = "Schriftrollen",
      [409735] = "Zauberbuch",
      [409754] = "Aufgehängter Schild",
      [409758] = "Weggeworfener Helm",
      [410168] = "Voodoohaufen",
      [410299] = "Arkane Geheimnisse",
      [410369] = "Toter Briefkasten",
      [410779] = "Opferkasten",
      [411328] = "Schlummernde Knochen",
      [411348] = "Staubige Truhe",
      [411620] = "Altar der Teleportation",
      [411674] = "Prophezeiung des Tods eines Königs",
      [411710] = "Dämonisches Reliquiar",
      [411715] = "Alteks Zweig",
      [414532] = "Cliffspring-Truhe",
      [414624] = "Leuchtturmvorrat",
      [414646] = "Überreste",
      [414658] = "Geröll",
      [414663] = "Götze der Shatterspear",
      [414904] = "Schrein",
   },
}