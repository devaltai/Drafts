//
//  CloudTopView.swift
//  Drafts
//
//  Created by Евгений Ялатов on 21.09.2021.
//

import SwiftUI

struct CloudTopView: View {
    var w: CGFloat
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Image("CloudTop")
                    .resizable()
                    .frame(width: w*40, height: w*70)
                
            }
            .padding(.top, -20)
            Spacer()
        }
    }
}

