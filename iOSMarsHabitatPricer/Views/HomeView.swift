//
//  ContentView.swift
//  iOSMarsHabitatPricer
//
//  Created by Jiwon_Hae on 2021/12/09.
//

import SwiftUI

struct HomeView: View {
    @State var price = 0.0
    let model = MarsHabitorPricerModel()
    
    var body: some View {
        VStack(alignment: .center){
            Button {
                price = model.makePrediction(solarPanels: 1.0, greenhouses: 1.0, size: 1.0)

            } label: {
                ZStack(){
                    Rectangle()
                        .frame(height: 48)
                        .foregroundColor(.blue)
                        .cornerRadius(5)
                    
                    Text("Run Model")
                        .foregroundColor(.white)
                        .bold()
                        
                }
                .padding()
            }
            
            Text("Price is $\(String(price))")
                .foregroundColor(.blue)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
