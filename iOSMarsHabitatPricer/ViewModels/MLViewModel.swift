//
//  MLViewModel.swift
//  iOSMarsHabitatPricer
//
//  Created by Jiwon_Hae on 2021/12/09.
//

import Foundation

class MLViewModel : ObservableObject {
    @Published var price = 0.0
    
    private let model = MarsHabitorPricerModel()
    
    func updatePredictedPrice(
        solarPanels : Double,
        greenhouses : Double,
        size : Double
    ){
        // updates the price of the mars
        price = model.makePrediction(solarPanels: solarPanels, greenhouses: greenhouses, size: size)
    }
}
