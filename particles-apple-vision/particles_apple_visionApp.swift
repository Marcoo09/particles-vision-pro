//
//  particles_apple_visionApp.swift
//  particles-apple-vision
//
//  Created by Marco Fiorito on 17/7/23.
//

import SwiftUI

@main
struct particles_apple_visionApp: App {
    // The view model.
    @State private var model = ViewModel()
    
    var body: some Scene {
        WindowGroup(id: "ContentView") {
            ContentView()
                .environment(model)
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
                .environment(model)
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
