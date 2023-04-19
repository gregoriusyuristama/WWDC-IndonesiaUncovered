//
//  File.swift
//  
//
//  Created by Gregorius Yuristama Nugraha on 16/04/23.
//

import Foundation
import SwiftUI

class Landmark {
    let landmarkName: String
    let landmarkLocation: String
    let landmarkDesc: String
    let landmarkImages: [Image]
    
    init(landmarkName: String, landmarkLocation: String, landmarkDesc: String, landmarkImages: [Image]) {
        self.landmarkName = landmarkName
        self.landmarkLocation = landmarkLocation
        self.landmarkDesc = landmarkDesc
        self.landmarkImages = landmarkImages
    }
}
