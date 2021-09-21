//
//  CenterButtonView.swift
//  Drafts
//
//  Created by Евгений Ялатов on 20.09.2021.
//

import SwiftUI
import AVKit

struct CenterButtonView: View {
    @State var player: AVAudioPlayer!
    @State var playing = false
    @State var width: CGFloat = 0
    var w: CGFloat
    var body: some View {
        VStack {
            Spacer()
            Text ("Mountain meditation").foregroundColor(.white)
            Text ("Peter Morgan, Free Mindfulness")
                .foregroundColor(.white)
                .font(.system(size: w*4))
                .fontWeight(.light)
            HStack{
                
                Button(action: {
                    self.player.currentTime -= 15
                }){
                Image("23")
                    .resizable()
                    .frame(width: w*11, height: w*11)
                }
                Button(action: {
                    print("tapped play")
                    if self.player.isPlaying {
                        self.player.pause()
                        self.playing = true
                    } else {
                        self.player.play()
                        self.playing = false
                    }
                }){
                    Image("21")
                        .resizable()
                        .frame(width: w*30, height: w*30)
                        .padding(w*6)
                }
                Button(action: {
                    let incement  = self.player.currentTime + 15
                    if incement < self.player.duration {
                        self.player.currentTime = incement
                    }
                }){
                Image("22")
                    .resizable()
                    .frame(width: w*11, height: w*11)
                }
            }.padding(5)
            Image("26")
            
                .frame(width: w*10, height: w*10)
                .background(Color(#colorLiteral(red: 0.5294117647, green: 0.2823529412, blue: 0.5294117647, alpha: 1)))
                .cornerRadius(w*5)
                .padding(.bottom, w*5)
            ZStack(alignment: .leading){
                Image("line")
                    .resizable()
                    .frame(width: w*90, height: w*2)
                Image("status")
                    .resizable()
                    .frame(width: w*2, height: w*2)
                    .padding(.leading, self.width )
            }
            .padding(.horizontal, w*5)
            Spacer()
            
        }
        .onAppear{
            self.player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: Bundle.main.path(forResource: "sound1", ofType: "mp3")!))
            self.player.prepareToPlay()
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
                if self.player.isPlaying{
//                    print(self.player.currentTime)
                    let screen = w*88
                    let value = self.player.currentTime / self.player.duration
                    self.width = screen * CGFloat(value)
                    print(self.width)
                }
            }        }
    }
}

