//
//  VehicleCell.swift
//  Cool Cars
//
//  Created by Jay Phillips on 5/28/20.
//  Copyright © 2020 devNasium. All rights reserved.
//

import UIKit

class VehicleCell: UITableViewCell {
    
    @IBOutlet weak var vehicleImage: UIImageView!
    
    @IBOutlet weak var vehicleTitle: UILabel!
    
    func updateVehicleCell(vehicle: Vehicle) {
        vehicleImage.image = UIImage(named: vehicle.image)
        vehicleTitle.text = vehicle.title
    }
    
    
}
