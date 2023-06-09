//
//  ContentView.swift
//  SurendraCard
//
//  Created by XP India on 30/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(UIColor(red: 0.09, green: 0.63, blue: 0.52, alpha: 1))
                    .ignoresSafeArea(.all)
                
                VStack {

                    Image("ios_Devloper")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 250, height: 250)
                        .clipShape(Circle())
                        .overlay {
                            Circle().stroke(Color.white, lineWidth: 5)
                        }

                    Text("Surendra Mahawar")
                        .font(Font.custom("Pacifico-Regular", size: 40))
                        .fontWeight(.bold)
                    .foregroundColor(.white)
                    
                    Text("ios devloper")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                    
                    Divider()
                    
                    InfoView(text: "+91 95******73", imageName: "phone.fill")
                    
                    InfoView(text: "surendramahawar***@gmail.com", imageName: "envelope.fill")
                }
            }
            .navigationBarTitle("My App")
            .navigationBarBackButtonHidden(true) // Hide the default back button
            // Use a custom view for the navigation bar
            .navigationBarItems(leading: MyBackButton())
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MyBackButton: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "chevron.left")
                .imageScale(.large)
                .frame(width: 44, height: 44)
                .foregroundColor(.white)
        }
    }
}
