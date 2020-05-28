//
//  VehicleDetailViewController.swift
//  Cool Cars
//
//  Created by Jay Phillips on 5/28/20.
//  Copyright © 2020 devNasium. All rights reserved.
//

import UIKit

class VehicleDetailViewController: UIViewController {

    @IBOutlet weak var vehicleTitle: UILabel!
    @IBOutlet weak var vehicleImage: UIImageView!
    @IBOutlet weak var engineImage: UIImageView!
    @IBOutlet weak var gasMilageImage: UIImageView!
    @IBOutlet weak var transmissionImage: UIImageView!
    
    private (set) public var vehicleDetails = [Vehicle]()
    
    var vehicleName: String?
    var vehicleImg: String?
    var vehicleEngine: String?
    var vehicleGasMilage: String?
    var vehicleTransmission: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vehicleTitle.text = vehicleName
        vehicleImage.image = UIImage(named: vehicleImg!)
        engineImage.image = UIImage(named: vehicleEngine!)
        gasMilageImage.image = UIImage(named: vehicleGasMilage!)
        transmissionImage.image = UIImage(named: vehicleTransmission!)
        
        

        
    }
    
    func initVehicleDetails() {
        vehicleDetails = Data.instance.getVehicleDetails()
    }
    
    @IBAction func homeButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
