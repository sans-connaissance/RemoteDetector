//
//  ComcastRemoteView.swift
//  RemoteDetectorv2
//
//  Created by David Malicke on 8/31/22.
//

import SwiftUI

struct ComcastRemoteView: View {
    var body: some View {
        VStack {
            Image("comcast")
                .resizable()
                .scaledToFit()
                .frame(width: 600, height: 600, alignment: .center)
            
        }.navigationTitle("Comcast Remote")
    }
}

struct ComcastRemoteView_Previews: PreviewProvider {
    static var previews: some View {
        ComcastRemoteView()
    }
}
