//
//  ContentView.swift
//  AndyCard
//
//  Created by Andrea Couto on 12/30/19.
//  Copyright © 2019 Andrea Couto. All rights reserved.
//

import SwiftUI

struct ContentView: View
{
    var body: some View
    {
        ZStack
        {
            Color(#colorLiteral(red: 1, green: 0.5450980392, blue: 0.6549019608, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            VStack
            {
                Image("Andy")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color(#colorLiteral(red: 1, green: 0.7764705882, blue: 0.7803921569, alpha: 1)), lineWidth: 10)
                    )
                Text("andy couto")
                    .font(Font.custom("PermanentMarker-Regular", size: 50))
                    .bold()
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.7764705882, blue: 0.7803921569, alpha: 1)))
                Text("iOS Developer")
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.7764705882, blue: 0.7803921569, alpha: 1)))
                    .bold()
                    .font(.system(size: 25))
                Divider()
                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                VStack
                {
                    InfoView(info: "Andrea.v.Couto14@gmail.com", image: Image(systemName: "paperplane.fill"))
                    InfoView(info: "Andrea-Couto", image: Image("GitHubLogo"))
                    InfoView(info: "AndyCouto.com", image: Image(systemName: "globe"))

                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView()
    }
}
