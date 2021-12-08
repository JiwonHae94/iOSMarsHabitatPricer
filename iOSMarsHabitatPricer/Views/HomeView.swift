//
//  ContentView.swift
//  iOSMarsHabitatPricer
//
//  Created by Jiwon_Hae on 2021/12/09.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var model : MLViewModel
    
    var body: some View {
        VStack(alignment: .center){
            NumberPicker(
                title: "solar panels",
                numList: [1.0, 2.0, 3.0, 4.0, 5.0],
                target: $model.solarPanels)
            
            NumberPicker(
                title: "green house",
                numList: [1.0, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0, 4.5, 5.0],
                target: $model.greenhouses)
            
            
            NumberPicker(
                title: "sizes",
                numList: [750.0,
                          1000.0,
                          1500.0,
                          2000.0,
                          3000.0,
                          4000.0,
                          5000.0,
                          10000.0],
                target: $model.size)
            
            Button {
                model.updatePredictedPrice()

            } label: {
                ZStack(){
                    Rectangle()
                        .frame(height: 48)
                        .foregroundColor(.green)
                        .cornerRadius(5)
                    
                    Text("Run Model")
                        .foregroundColor(.white)
                        .bold()
                        
                }
                .padding()
            }
            
            Text("Price is \(Helper.formatToCurrency(num: model.price))")
                .foregroundColor(.blue)
        }
        .ignoresSafeArea(.all, edges: .top)
        
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
