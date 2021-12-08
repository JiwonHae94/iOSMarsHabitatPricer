//
//  MLViewModel.swift
//  iOSMarsHabitatPricer
//
//  Created by Jiwon_Hae on 2021/12/09.
//

import Foundation

class MLViewModel : ObservableObject {
    @Published var price = 0.0
    
    @Published var greenhouses = 0.0
    @Published var solarPanels = 0.0
    @Published var size = 0.0
    
    private let model = MarsHabitorPricerModel()
    
    func updatePredictedPrice(){
        // updates the price of the mars
        print("price \(price) greenhouse \(solarPanels) size \(size) solarPanels \(solarPanels)")
        price = model.makePrediction(solarPanels: solarPanels, greenhouses: greenhouses, size: size)
    }
}
