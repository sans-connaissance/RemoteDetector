//
//  PlaystationRemoteView.swift
//  RemoteDetectorv2
//
//  Created by David Malicke on 8/31/22.
//

import SwiftUI

struct PlaystationRemoteView: View {
    var body: some View {
        VStack {
            Image("playstation")
                .resizable()
                .scaledToFit()
                .frame(width: 500, height: 500, alignment: .center)
            
        }.navigationTitle("Playstation Remote")
    }
}

struct PlaystationRemoteView_Previews: PreviewProvider {
    static var previews: some View {
        PlaystationRemoteView()
    }
}
