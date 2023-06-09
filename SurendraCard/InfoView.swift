//
//  InfoView.swift
//  SurendraCard
//
//  Created by XP India on 30/05/23.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
        
            .overlay {
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(Color(red: 0.09, green: 0.63, blue: 0.52))
                    
                    Text(text)
                        .foregroundColor(Color(uiColor: UIColor(named: "InfoColor") ?? UIColor.black))
                }
            }
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
