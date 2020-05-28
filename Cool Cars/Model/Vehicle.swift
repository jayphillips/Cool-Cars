//
//  Vehicle.swift
//  Cool Cars
//
//  Created by Jay Phillips on 5/28/20.
//  Copyright © 2020 devNasium. All rights reserved.
//

import Foundation

struct Vehicle {
    private (set) public var title: String
    private (set) public var image: String
    private (set) public var engine: String
    private (set) public var gasMilage: String
    private (set) public var transmission: String
    
    init(title: String, image: String, engine: String, gasMilage: String, transmission: String) {
        self.title = title
        self.image = image
        self.engine = engine
        self.gasMilage = gasMilage
        self.transmission = transmission
    }
}
