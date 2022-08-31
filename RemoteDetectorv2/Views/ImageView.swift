//
//  ImageView.swift
//  RemoteDetectorv2
//
//  Created by David Malicke on 8/31/22.
//

import SwiftUI

struct ImageView: View {
    
    @Binding var uiImage: UIImage?
    
    var body: some View {
        Image(uiImage: uiImage!)
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300, alignment: .center)
    }
}

