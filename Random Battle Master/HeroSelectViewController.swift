//
//  HeroSelectViewController.swift
//  Random Battle Master
//
//  Created by Nicholas Hoffman on 6/7/17.
//  Copyright © 2017 Felhawk Development. All rights reserved.
//

import UIKit

class HeroSelectViewController: UIViewController {

    var hero: Hero!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        selectedHeroNameLabel.text = hero.Name
        selectedHeroPortraitImage.image = imageForHero(heroType: hero.HeroType)
        selectedHeroAbility1NameLabel.text = hero.Ability1Label
        selectedHeroAbility1DescLabel.text = hero.Ability1Description
        selectedHeroAbility2NameLabel.text = hero.Ability2Label
        selectedHeroAbility2DescLabel.text = hero.Ability2Description
        selectedHeroAbility3NameLabel.text = hero.Ability3Label
        selectedHeroAbility3DescLabel.text = hero.Ability3Description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBOutlet weak var selectedHeroNameLabel: UILabel!
    @IBOutlet weak var selectedHeroAbility1NameLabel: UILabel!
    @IBOutlet weak var selectedHeroAbility1DescLabel: UILabel!
    @IBOutlet weak var selectedHeroAbility2NameLabel: UILabel!
    @IBOutlet weak var selectedHeroAbility2DescLabel: UILabel!
    @IBOutlet weak var selectedHeroAbility3NameLabel: UILabel!
    @IBOutlet weak var selectedHeroAbility3DescLabel: UILabel!
    @IBOutlet weak var selectedHeroPortraitImage: UIImageView!
    
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

}
