//
//  HeroTableViewCell.swift
//  Random Battle Master
//
//  Created by Nicholas Hoffman on 6/7/17.
//  Copyright © 2017 Felhawk Development. All rights reserved.
//

import UIKit

class HeroTableViewCell: UITableViewCell {
    
    @IBOutlet weak var heroNameLabel: UILabel!
    @IBOutlet weak var heroTypeLabel: UILabel!
    @IBOutlet weak var heroImage: UIImageView!
    
    var hero: Hero! {
        didSet {
            heroNameLabel.text = hero.Name
            heroTypeLabel.text = hero.HeroType.rawValue
            heroImage.image = imageForHero(heroType: hero.HeroType)
        }
    }
    
    func imageForHero(heroType: HeroType) -> UIImage? {
        switch (heroType) {
        case HeroType.Archer:
            return UIImage(named: "Archer")
        case HeroType.Fighter:
            return UIImage(named: "Fighter")
        case HeroType.Warlock:
            return UIImage(named: "Warlock")
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
