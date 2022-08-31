//
//  ContentView.swift
//  RemoteDetectorv2
//
//  Created by David Malicke on 8/31/22.
//

import SwiftUI

struct ContentView: View {
    @State var isPresenting: Bool = false
    @State var uiImage: UIImage?
    @State var sourceType: UIImagePickerController.SourceType = .camera
    @StateObject var vm = ContentViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if uiImage == nil {
                    HStack {
                        Spacer()
                        OnboardingView().padding(.bottom)
                        Spacer()
                    }
                } else {
                    ImageView(uiImage: $uiImage).padding(.bottom)
                }
                
                HStack {
                    Button {
                        isPresenting = true
                        sourceType = .camera
                    } label: {
                        HStack {
                            Image(systemName: "camera")
                            Text("Detect Remote")
                        }
                    }
                }
                .font(.title)
                .foregroundColor(.blue)
                VStack {
                    if uiImage != nil {
                        Group {
                            if let imageClass = vm.imageClass {
                                HStack {
                                    Text("This is a")
                                        .font(.caption)
                                    NavigationLink {
                                        switch imageClass {
                                        case "Apple Remote":
                                            AppleRemoteView()
                                        case "Comcast Remote":
                                            ComcastRemoteView()
                                        case "Playstation Remote":
                                            PlaystationRemoteView()
                                        default:
                                            Text("Oops!")
                                        }
                                    } label: {
                                        Text(imageClass)
                                            .bold()
                                    }
                                }
                            }
                        }
                        .font(.subheadline)
                        .padding()
                    }
                }
            }
            .navigationTitle("Home")
            .sheet(isPresented: $isPresenting) {
                ImagePicker(uiImage: $uiImage, isPresenting: $isPresenting, sourceType: $sourceType)
                    .onDisappear {
                        if uiImage != nil {
                            vm.detect(uiImage: uiImage!)
                        }
                    }
            }
            .padding()
        }
    }
}

