//
//  Planet.swift
//  planets1.2
//
//  Created by jdcorn on 12/10/19.
//  Copyright © 2019 jdcorn. All rights reserved.
//

import Foundation
//Name, ImageName, Diameter, Day-length, and MaxMillionKMsFromSun.

/// Create a Planet class
class Planet {
    
    /// Declare its properties
    let name: String
    let imageName: String
    let diameter: Int
    let dayLength: Double
    let kmFromSun: Double
    
    /// Create memberwise initializer using the above properties
    init(name: String, imageName: String, diameter: Int, dayLength: Double, kmFromSun: Double) {
        self.name = name
        self.imageName = imageName
        self.diameter = diameter
        self.dayLength = dayLength
        self.kmFromSun = kmFromSun
    }
}
