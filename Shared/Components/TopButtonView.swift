//
//  TopButtonView.swift
//  Drafts
//
//  Created by Евгений Ялатов on 20.09.2021.
//

import SwiftUI

struct TopButtonView: View {
    var w: CGFloat
    var body: some View {
        VStack {
            HStack{
                Image("1")
                    .frame(width: w*10, height: w*10)
                    .background(Color(.white))
                    .cornerRadius(w*5)
                Spacer()
                Image("2")
                    .frame(width: w*10, height: w*10)
                    .background(Color(#colorLiteral(red: 0.7215686275, green: 0.4980392157, blue: 0.6784313725, alpha: 1)))
                    .cornerRadius(w*5)
            }.padding(w*5)
            Spacer()
        }
    }
}

