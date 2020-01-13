//
//  PlanetTableViewController.swift
//  planets1.2
//
//  Created by jdcorn on 12/10/19.
//  Copyright © 2019 jdcorn. All rights reserved.
//

import UIKit

class PlanetTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        /// Access the "static var planets" property in our PlanetController file, .count returns the number of entries in the property (number of planets)
        /// So the number of rows that will populate in the view, will be the same number as entries in the "static var planets" property
        return PlanetController.planets.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)
        
        /// Declaring planet to be equal to the planets index path in our planet controller array
        let planet = PlanetController.planets[indexPath.row]
        
        /// Our cells' text table will be our ^^^ planet's name
        cell.textLabel?.text = planet.name
        /// Our detail text label (smaller text) will display our planet's number in the index + 1
        ///     ( since array's count: 0, 1, 2, 3.. the +1 is necessary so mercury doesn't display "Planet 0")
        cell.detailTextLabel?.text = "Planet \(indexPath.row + 1)"
        /// Our image will be accessed from our Planets' imageName property
        cell.imageView?.image = UIImage(named: planet.imageName)
        
        return cell
    }
    
    // MARK: - Navigation
    // IIDOO:
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Identifier
        if segue.identifier == "toPlanetDetail" {
            
            // IndexPath
            if let indexPath = tableView.indexPathForSelectedRow {
                
                // Destination
                guard let destinationVC = segue.destination as? PlanetDetailViewController else { return }
                
                // Object Ready
                let planet = PlanetController.planets[indexPath.row]
                
                // Object sent
                destinationVC.planetLanding = planet
            }
        }
    }
}
