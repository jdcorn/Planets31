//
//  PlanetController.swift
//  planets1.2
//
//  Created by jdcorn on 12/10/19.
//  Copyright © 2019 jdcorn. All rights reserved.
//

import Foundation

/// Create PlanetController class
class PlanetController {
    
    /// Create a computed property to hold our planets' info
    /// Set it to "static" so it's accessable throughout the program
    static var planets: [Planet] {
        
        let mercury = Planet(name: "Mercury", imageName: "mercury", diameter: 4880, dayLength: 87.969, kmFromSun: 43.0)
        
        let venus = Planet(name: "Venus", imageName: "venus", diameter: 12104, dayLength: 2802, kmFromSun: 108.2)
        
        let earth = Planet(name: "Earth", imageName: "earth", diameter: 12756, dayLength: 24, kmFromSun: 149.6)
        
        let mars = Planet(name: "Mars", imageName: "mars", diameter: 6792, dayLength: 24.7, kmFromSun: 227.9)
        
        let jupiter = Planet(name: "Jupiter", imageName: "jupiter", diameter: 142984, dayLength: 9.9, kmFromSun: 778.6)
        
        let saturn = Planet(name: "Saturn", imageName: "saturn", diameter: 120536, dayLength: 10.7, kmFromSun: 1433.5)
        
        let uranus = Planet(name: "Uranus", imageName: "uranus", diameter: 51118, dayLength: 17.2, kmFromSun: 2872.5)
        
        let neptune = Planet(name: "Neptune", imageName: "neptune", diameter: 49528, dayLength: 16.1, kmFromSun: 4495.1)
        
        let pluto = Planet(name: "Pluto", imageName: "pluto", diameter: 2370, dayLength: 153.3, kmFromSun: 5906.4)
        
        /// Return an array of the planet objects you just created, since computed properties require you to return something
        return [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto]
    }
}
