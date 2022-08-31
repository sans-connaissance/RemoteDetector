//
//  AppleRemoteView.swift
//  RemoteDetectorv2
//
//  Created by David Malicke on 8/31/22.
//

import SwiftUI

struct AppleRemoteView: View {
    var body: some View {
        VStack {
            Image("apple")
                .resizable()
                .scaledToFit()
                .frame(width: 600, height: 600, alignment: .center)
            
        }.navigationTitle("Apple Remote")
    }
}

struct AppleRemoteView_Previews: PreviewProvider {
    static var previews: some View {
        AppleRemoteView()
    }
}
