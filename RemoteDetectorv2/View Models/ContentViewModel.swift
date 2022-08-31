//
//  ImageClassifier.swift
//  RemoteDetectorv2
//
//  Created by David Malicke on 8/31/22.
//

import SwiftUI

class ContentViewModel: ObservableObject {
    
    @Published private var classifier = Classifier()
    
    var imageClass: String? {
        switch classifier.results {
        case "AppleRemote":
            return "Apple Remote"
        case "ComcastRemote":
            return "Comcast Remote"
        case "PlaystationRemote":
            return "Playstation Remote"
        default:
            return "What remote is this?"
        }
    }

    func detect(uiImage: UIImage) {
        guard let ciImage = CIImage (image: uiImage) else { return }
        classifier.detect(ciImage: ciImage)
        
    }
    
}
