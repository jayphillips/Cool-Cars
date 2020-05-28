//
//  MainViewController.swift
//  Cool Cars
//
//  Created by Jay Phillips on 5/27/20.
//  Copyright © 2020 devNasium. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var vehicleTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vehicleTableView.dataSource = self
        vehicleTableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.instance.getVehicleDetails().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "vehicleCell") as? VehicleCell {
            let vehicle = Data.instance.getVehicleDetails()[indexPath.row]
            cell.updateVehicleCell(vehicle: vehicle)
            cell.selectionStyle = .none
            return cell
        } else {
            return VehicleCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vehicle = Data.instance.getVehicleDetails()[indexPath.row]
        performSegue(withIdentifier: "toVehicleDetailViewController", sender: vehicle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vehicleDetailsViewController = segue.destination as? VehicleDetailViewController {
            assert(sender as? Vehicle != nil)
            vehicleDetailsViewController.initVehicleDetails()
            vehicleDetailsViewController.vehicleName = (sender as! Vehicle).title
            vehicleDetailsViewController.vehicleImg = (sender as! Vehicle).image
            vehicleDetailsViewController.vehicleEngine = (sender as! Vehicle).engine
            vehicleDetailsViewController.vehicleGasMilage = (sender as! Vehicle).gasMilage
            vehicleDetailsViewController.vehicleTransmission = (sender as! Vehicle).transmission
            }
    }

}

