//
//  InfoView.swift
//  AndyCard
//
//  Created by Andrea Couto on 12/30/19.
//  Copyright © 2019 Andrea Couto. All rights reserved.
//

import SwiftUI

struct InfoView: View
{
    let info: String
    let image: Image
    
    var body: some View
    {
        Rectangle()
            .frame(height: 40.0)
            .cornerRadius(15)
            .foregroundColor(Color(#colorLiteral(red: 1, green: 0.7764705882, blue: 0.7803921569, alpha: 1)))
            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            .overlay(
                HStack
                {
                    image.resizable().scaledToFit().frame(height: 25)
                        .foregroundColor(.black)
                        .padding(.trailing, 20)
                    Text(info)
                        .foregroundColor(Color(#colorLiteral(red: 0.2470588235, green: 0.3019607843, blue: 0.4431372549, alpha: 1)))
                }
                .padding(.leading, 50),
                alignment: .leading
            )
    }
}

struct InfoView_Previews: PreviewProvider
{
    static var previews: some View
    {
        InfoView(info: "test", image: Image("GitHubLogo"))
            .previewLayout(.sizeThatFits)
    }
}
