//
//  ContentView.swift
//  particles-apple-vision
//
//  Created by Marco Fiorito on 17/7/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    @State var showImmersiveSpace = false
    @Environment(ViewModel.self) private var model
    
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace    

    var body: some View {
        @Bindable var model = model

        NavigationStack {
            VStack {
                Picker("Background", selection: $model.selectedBackground) {
                    ForEach(Background.allCases) {
                        Text($0.name)
                      }
                }
                .disabled(showImmersiveSpace)
                .pickerStyle(.segmented)
                .padding(.bottom, 50)

                Toggle("Make it Rain", isOn: $showImmersiveSpace)
                    .toggleStyle(.button)
                    .padding(.top, 50)
            }
            .navigationTitle("Content")
            .padding()
        }
        .onChange(of: showImmersiveSpace) { _, newValue in
            Task {
                if newValue {
                    await openImmersiveSpace(id: "ImmersiveSpace")
                } else {
                    await dismissImmersiveSpace()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
