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
    var target : Double
    
    var body: some View {
        VStack{
            Text(title.uppercased())
                .bold()
                .foregroundColor(.blue)
            
            Picker(title, selection: $target){
                ForEach(numList, id: \.self) { num in
                    Text(String(num)).tag(Double(num))
                }
                
            }
        }
    }
}
