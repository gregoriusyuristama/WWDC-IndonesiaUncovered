//
//  MapView.swift
//  WWDC-IndonesiaUncovered
//
//  Created by Gregorius Yuristama Nugraha on 09/04/23.
//

import SwiftUI
import AVKit

struct MapView: View {
    var doShowCard: () -> ()
    var doShowCredits : () -> ()
    
    @Binding var isCardShowed: Bool
    @State var curPinpointX: Double = 0
    @State var curPinpointY: Double = 0
    @State var showedLandmark: Landmark?
    @State var activeIndex = 0
    
    @Binding var audioPlayer: AVAudioPlayer!
    
    @State private var isMuted = false
    @State private var isAnimating = false
//    @State private var cloudPosition: CGPoint = .zero
    @State private var position = CGFloat.zero
    var body: some View {

        GeometryReader { geo in
            ZStack{
                VStack(spacing: 0){
                    ZStack{
                        HStack{
                            Image("CloudImage")
                                .resizable()
                                .frame(width: 229, height: 90)
                                .offset(y: -32.5)
                            Image("CloudImage")
                                .resizable()
                                .frame(width: 229, height: 90)
                                .offset(y: 50)
                            Image("CloudImage")
                                .resizable()
                                .frame(width: 229, height: 90)
                            Image("CloudImage")
                                .resizable()
                                .frame(width: 229, height: 90)
                                .offset(y: -20)
                            Image("CloudImage")
                                .resizable()
                                .frame(width: 229, height: 90)
                                .offset(y: 0)
                        }
                        .offset(x: position)
                        .onAppear{
                            withAnimation(Animation.linear(duration: 25).repeatForever(autoreverses: false)){
                                position = UIScreen.main.bounds.width
                            }
                        }
                        HStack{
                            Image("CloudImage")
                                .resizable()
                                .frame(width: 229, height: 90)
                                .offset(y: -32.5)
                            Image("CloudImage")
                                .resizable()
                                .frame(width: 229, height: 90)
                                .offset(y: 50)
                            Image("CloudImage")
                                .resizable()
                                .frame(width: 229, height: 90)
                            Image("CloudImage")
                                .resizable()
                                .frame(width: 229, height: 90)
                                .offset(y: -20)
                            Image("CloudImage")
                                .resizable()
                                .frame(width: 229, height: 90)
                                .offset(y: 0)
                        }
                        .offset(x: position - UIScreen.main.bounds.width)
                        .onAppear{
                            withAnimation(Animation.linear(duration: 25).repeatForever(autoreverses: false)){
                                position = UIScreen.main.bounds.width
                            }
                        }
                    }
                    
                    ZStack(alignment: .bottomLeading){
                        Image("IndonesiaMap")
                            .resizable()
                            .frame(width: 984, height: 395)
                            .shadow(radius: 10, x: 4, y:4)
                        ForEach(kPinpointDatas.indices, id: \.self ){index in
                            ZStack{
                                if isCardShowed && activeIndex == index{
                                    Circle()
                                        .fill(.orange)
                                        .frame(width: 20, height: 20)
                                        .opacity(isAnimating ? 1.0 : 0)
                                        .scaleEffect(isAnimating ? 1 : 0.2)
                                        .animation(Animation.easeInOut(duration: 1.0).repeatForever(), value: isAnimating)
                                        .onAppear() {
                                            self.isAnimating = true
                                        }
                                }
                                PinPoint(posX: kPinpointDatas[index].x, posY: kPinpointDatas[index].y,landmark: kPinpointDatas[index].landmark, index: index, doShowCard: showCard)
                                    .frame(width: 20, height: 20)
                            }
                            .padding(.bottom, kPinpointDatas[index].y)
                            .padding(.leading, kPinpointDatas[index].x)
                        }
                        
                        HStack{
                            Spacer()
                            VStack{
                                Button{
                                    isMuted.toggle()
                                    if isMuted{
                                        audioPlayer.volume = 0.0
                                    }else {

                                        audioPlayer.volume = 1.0
                                    }
                                }label: {
                                    VolumeIcon(isMuted: $isMuted)
                                }
                                .frame(width: 30, height: 30)
                                .foregroundColor(.black)

                                Spacer()
                            }

                        }
                        .padding(.trailing, 40)
                        
                        if isCardShowed{
                            HStack{
                                Spacer()
                                BubbleCard(landmarkData: showedLandmark,posX: curPinpointX, posY: -curPinpointY, doClose: doClose)
                                Spacer()
                            }
                        }
                        

                    }
                    .frame(width: 984, height: 395)
                    .padding(.top, 100)
                    
                    
                    HStack(){
                        Text("Journey through Indonesia's landmarks and immerse yourself in its rich culture and history! Sounds that you hear is beautiful sounds of the traditional Indonesian gamelan. Click on the map icons to uncover the hidden gems of this amazing country.")
                            .bold()
                            .font(.system(size: 18))
                            .frame(width: 750, height: 117)
                            .foregroundColor(AppColor.defBlack)
                        Button{
                            self.doShowCredits()
                        }label: {
                            Text("Credits")
                                .bold()
                                .foregroundColor(.black)
                                .font(.system(size: 24))
                                .padding()
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color.gray, lineWidth: 1)
                                    )
                        }
                        .background(Color("CreamColor"))
                    }
                    .padding(.top, 79)
                    
                }
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
        
    }
    func showCard(posX: Double, posY: Double, currentLandmark: Landmark, index: Int){
        doShowCard()
        showedLandmark = currentLandmark
        curPinpointX = posX - 675
        curPinpointY = posY + 75
        activeIndex = index
        if !isCardShowed{
            self.isAnimating = false
        }
    }
    
    func doClose(){
        doShowCard()
        if !isCardShowed{
            self.isAnimating = false
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(doShowCard: {}, doShowCredits: {}, isCardShowed: .constant(false), audioPlayer: .constant(try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: Bundle.main.path(forResource: "Spring Thaw - Asher Fulero", ofType: "mp3")!))))
            .previewInterfaceOrientation(.landscapeLeft)
            .background(Color("CreamColor"))
    }
}
