//
//  particles_apple_visionApp.swift
//  particles-apple-vision
//
//  Created by Marco Fiorito on 17/7/23.
//

import SwiftUI

@main
struct particles_apple_visionApp: App {
    var body: some Scene {
        WindowGroup(id: "ContentView") {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
