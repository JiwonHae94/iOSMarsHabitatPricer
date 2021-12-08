//
//  NumberFormatter.swift
//  iOSMarsHabitatPricer
//
//  Created by Jiwon_Hae on 2021/12/09.
//

import Foundation

struct Helper{
    
    static func formatToCurrency(num : Double) -> String{
        let currencyFormatter = NumberFormatter()
        currencyFormatter.numberStyle = .currency
        currencyFormatter.currencySymbol = "$"
        return currencyFormatter.string(for: num) ?? "0"
    }
}
