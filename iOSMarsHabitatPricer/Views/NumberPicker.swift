//
//  NumberPIcker.swift
//  iOSMarsHabitatPricer
//
//  Created by Jiwon_Hae on 2021/12/09.
//

import SwiftUI

struct NumberPicker: View {
    var title : String
    var numList : [Double]
    var target : Binding<Double>
    
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .foregroundColor(.blue)
                    .cornerRadius(10)
                    .frame(height: 50)
                
                Text(title.uppercased())
                    .bold()
                    .foregroundColor(.white)
            }
            .padding()
            
            Picker(title, selection: target){
                ForEach(numList, id: \.self) { num in
                    Text(String(num)).tag(Double(num))
                }
                
            }
        }
    }
}
