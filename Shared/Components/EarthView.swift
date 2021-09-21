//
//  EarthView.swift
//  Drafts
//
//  Created by Евгений Ялатов on 21.09.2021.
//

import SwiftUI

struct EarthView: View {
    var w: CGFloat
    var body: some View {
        VStack {
            Spacer()
            Image("earth")
                .resizable()
                .frame(width: w*100, height: w*45)
        }
    }
}


