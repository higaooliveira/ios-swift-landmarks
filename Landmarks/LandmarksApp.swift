//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by oliveira.higor on 15/04/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
