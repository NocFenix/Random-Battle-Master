//
//  Heroes.swift
//  Random Battle Master
//
//  Created by Nicholas Hoffman on 6/7/17.
//  Copyright © 2017 Felhawk Development. All rights reserved.
//

import Foundation

/**
    The base Hero object
 */
struct Hero {
    /// The name of the Hero
    var Name: String
    /// The type of Hero
    var HeroType: HeroType

    /// The name of the Hero's first ability
    var Ability1Label: String
    /// The description of the Hero's first ability
    var Ability1Description: String
    
    /// The name of the Hero's second ability
    var Ability2Label: String
    /// The description of the Hero second ability
    var Ability2Description: String
    
    /// The name of the Hero's third ability
    var Ability3Label: String
    /// The description of the Hero's third ability
    var Ability3Description: String
    
    /// The level of the Hero
    var Level: Int
    /// The current experience points of the Hero
    var CurrentXP: Int
    /// The needed experience points of the Hero
    var NeededXP: Int
}

/**
    Hero type
 
    - Archer: ranged hero
    - Fighter: melee hero
    - Warlock: magic hero
 */
enum HeroType: String {
    case Archer, Fighter, Warlock
}
