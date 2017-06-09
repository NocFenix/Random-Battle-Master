//
//  HeroTableViewController.swift
//  Random Battle Master
//
//  Created by Nicholas Hoffman on 6/7/17.
//  Copyright © 2017 Felhawk Development. All rights reserved.
//

import UIKit

class HeroTableViewController: UITableViewController {

    var heroes:[Hero] = heroesData
    var selectedHero: Hero!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return heroes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HeroSelectCell", for: indexPath) as! HeroTableViewCell
     
        let hero = heroes[indexPath.row] as Hero
        cell.hero = hero
        return cell
    }

    let MinHeight: CGFloat = 100.0
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let tHeight = tableView.bounds.height
        
        let temp = tHeight/CGFloat(heroes.count)
        
        return temp > MinHeight ? temp : MinHeight
    }
    
    @IBAction func backToHeroSelectViewController(segue:UIStoryboardSegue) {

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // get the controller to send data to
        if segue.identifier == "HeroSelected" {
            if let selectHeroController = segue.destination as? HeroSelectViewController {
                // get indexPath
                if let indexPath = self.tableView.indexPathForSelectedRow {
                    let hero = heroes[indexPath.row]
                    selectHeroController.hero = hero
                }
            }
        }
    }

}
