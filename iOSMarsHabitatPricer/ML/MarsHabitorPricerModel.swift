//
//  MarsHibatorPricer.swift
//  iOSMarsHabitatPricer
//
//  Created by Jiwon_Hae on 2021/12/09.
//

import Foundation

struct MarsHabitorPricerModel{
    let model = MarsHabitatPricer()
    
    func makePrediction(
        solarPanels : Double,
        greenhouses : Double,
        size : Double
    ) -> Double {
        guard let marsHabitatPricerOutput = try? model.prediction(solarPanels: solarPanels, greenhouses: greenhouses, size: size) else {
            fatalError("Unexpected runtime error.")
        }
        return marsHabitatPricerOutput.price

    }
}
