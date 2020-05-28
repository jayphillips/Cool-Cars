//
//  Data.swift
//  Cool Cars
//
//  Created by Jay Phillips on 5/28/20.
//  Copyright © 2020 devNasium. All rights reserved.
//

import Foundation

class Data {
    static let instance = Data()
    
    private let details = [
        Vehicle(title: "2020 Chevy Blazer", image: "2020Blazer.jpg", engine: "2020BlazerEng", gasMilage: "2020BlazerGasMi", transmission: "2020BlazerTrans"),
        Vehicle(title: "2020 Chevy Camero", image: "2020Camero.jpg", engine: "2020CameroEng", gasMilage: "2020CameroGasMi", transmission: "2020CameroTrans"),
        Vehicle(title: "2020 Chevy Impala", image: "2020Impala.jpg", engine: "2020ImpalaEng", gasMilage: "2020ImpalaGasMi", transmission: "2020ImpalaTrans"),
        Vehicle(title: "2020 Chevy Silverado", image: "2020Silverado.jpg", engine: "2020SilveradoEng", gasMilage: "2020SilveradoGasMi", transmission: "2020SilveradoTrans"),
        Vehicle(title: "2020 Chevy Suburban", image: "2020Suburban.jpg", engine: "2020SuburbanEng", gasMilage: "2020SuburbanGasMi", transmission: "2020SuburbanTrans")
    ]
    
    func getVehicleDetails() -> [Vehicle] {
        return details
    }
}
