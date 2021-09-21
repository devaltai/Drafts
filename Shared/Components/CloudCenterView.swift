//
//  CloudCenterView.swift
//  Drafts
//
//  Created by Евгений Ялатов on 21.09.2021.
//

import SwiftUI

struct CloudCenterView: View {
    var w: CGFloat
    var body: some View {
        VStack{
            Spacer()
            HStack{
                Image("CloudCenter")
                    .resizable()
                    .frame(width: w*40, height: w*70)
                Spacer()
            }.padding(.bottom, w*25)
        }
    }
}

