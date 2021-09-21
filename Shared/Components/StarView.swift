//
//  StarView.swift
//  Drafts
//
//  Created by Евгений Ялатов on 21.09.2021.
//

import SwiftUI

struct StarView: View {
    var w: CGFloat
    var body: some View {
        Image("10")
            .resizable()
            .frame(width:w*90, height: w*135)
        
    }
}

