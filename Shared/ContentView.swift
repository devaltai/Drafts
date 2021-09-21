//
//  ContentView.swift
//  Shared
//
//  Created by Евгений Ялатов on 20.09.2021.
//

import SwiftUI

struct ContentView: View {
    let W = CGFloat(UIScreen.main.bounds.width/100)
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.7882352941, green: 0.5137254902, blue: 0.7176470588, alpha: 1)), .white]),
                startPoint: .top,
                endPoint: .bottom).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            StarView(w: W)
            CloudTopView(w: W)
            CloudCenterView(w: W)
            TopButtonView(w: W)
            CenterButtonView(w: W)
            EarthView(w: W)
            Spacer()
//            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
//            .background(Color(.blue))
        }

        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
