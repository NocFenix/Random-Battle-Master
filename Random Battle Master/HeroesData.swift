//
//  HeroesData.swift
//  Random Battle Master
//
//  Created by Nicholas Hoffman on 6/7/17.
//  Copyright © 2017 Felhawk Development. All rights reserved.
//

import Foundation

var heroesData = [
    Hero(Name:"Cerriduin Windbow",
         HeroType: HeroType.Archer,
         Ability1Label: "Single Shot",
         Ability1Description: "Fires a single arrow. Deals 5 Damage.",
         Ability2Label: "Poison Shot",
         Ability2Description: "Fires an arrow that poisons the enemy. Deals 2 Damage per round for 3 rounds.",
         Ability3Label: "Regen HP",
         Ability3Description: "Restores 5 Hit Points per round for 3 rounds.",
         Level:1,
         CurrentXP:0,
         NeededXP:100),
    Hero(Name:"Aelan Darksbane",
         HeroType: HeroType.Fighter,
         Ability1Label: "Strike",
         Ability1Description: "A strike made with the long sword. Deals 7 Damage.",
         Ability2Label: "Shield Bash",
         Ability2Description: "Hits the enemy with a shield. Deals 12 Damage.",
         Ability3Label: "Enrage",
         Ability3Description: "Increases Damage dealt by 3 for 3 rounds and immediately restores 15 Hit Points.",
         Level:1,
         CurrentXP:0,
         NeededXP:100),
    Hero(Name:"Noire Shadowstar",
         HeroType: HeroType.Warlock,
         Ability1Label: "Shadow Bolt",
         Ability1Description: "Launches a magic bolt of shadow at the enemy. Deals 3 Damage.",
         Ability2Label: "Life Steal",
         Ability2Description: "Deal 7 damage to the enemy and restores 5 Hit Points.",
         Ability3Label: "Dark Ritual",
         Ability3Description: "Deals 15 Damage per round for 3 rounds.",
         Level:1,
         CurrentXP:0,
         NeededXP:100)
]
