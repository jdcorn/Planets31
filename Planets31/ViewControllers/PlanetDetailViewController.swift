//
//  PlanetDetailViewController.swift
//  planets1.2
//
//  Created by jdcorn on 12/10/19.
//  Copyright © 2019 jdcorn. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    
    // MARK: - Properties
    /// Create the varable that will catch the data passed through the segue
    /// It will be of-type Planet, which means it will only take in information that matches our Planet class
    var planetLanding: Planet? {
        
        /// When data lands, update the view with the data
        didSet {
            updateViews()
        }
    }
    
    // MARK: - Outlets
    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var planetNameLabel: UILabel!
    @IBOutlet weak var dayLengthLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var diameterLabel: UILabel!
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Functions
    func updateViews() {
        loadViewIfNeeded()
        /// this planet is refering to the data that's caught by the landingpad above
        if let planet = planetLanding {
            planetImage.image = UIImage(named: planet.imageName)
            planetNameLabel.text = "\(planet.name)"
            dayLengthLabel.text = "\(planet.dayLength)"
            distanceLabel.text = "\(planet.kmFromSun)10^6km"
            diameterLabel.text = "\(planet.diameter)"
        }
    }
}
