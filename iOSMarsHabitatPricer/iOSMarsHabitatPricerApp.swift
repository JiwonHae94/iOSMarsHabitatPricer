//
//  iOSMarsHabitatPricerApp.swift
//  iOSMarsHabitatPricer
//
//  Created by Jiwon_Hae on 2021/12/09.
//

import SwiftUI

@main
struct iOSMarsHabitatPricerApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(MLViewModel())
        }
    }
}
