//
//  Background.swift
//  particles-apple-vision
//
//  Created by Marco Fiorito on 17/7/23.
//

import Foundation

enum Background: String, CaseIterable, Identifiable, Codable, Equatable {
    
    case beach
    case camping
    case creek
    case hillside
    case lake
    case ocean
    case park
    
    var id: Self { self }
    
    var name: String { rawValue.capitalized }
    
    /// The environment image to load.
    var imageName: String { "\(rawValue)_scene" }
    
    /// A number of degrees to rotate the 360 "destination" image to provide the best initial view.
    var rotationDegrees: Double {
        switch self {
        case .beach: 55
        case .camping: -55
        case .creek: 0
        case .hillside: 0
        case .lake: -55
        case .ocean: 0
        case .park: 190
        }
    }
}
