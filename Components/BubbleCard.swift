//
//  BubbleCard.swift
//  WWDC-IndonesiaUncovered
//
//  Created by Gregorius Yuristama Nugraha on 11/04/23.
//

import SwiftUI

struct BubbleCard: View {
    var landmarkData: Landmark?
    var posX: Double?
    var posY: Double?
    
    var doClose: () -> ()
    var body: some View {
        ZStack{
            BubbleChatShape(x: posX!, y: posY!)
                .fill(.white)
                .shadow(radius: 10, x: 4, y: 10)
            VStack{
                HStack{
                    VStack(spacing: -8){
                        Circle()
                            .fill(.red)
                            .frame(width: 22, height: 22)
                        Triangle()
                            .fill(.red)
                            .frame(width: 22, height: 22)
                            .cornerRadius(1)
                    }
                    .overlay{
                        Circle()
                            .fill(.white)
                            .frame(width: 10, height: 19)
                            .offset(y: -8)
                    }
                    VStack(alignment: .leading){
                        Text("\(landmarkData!.landmarkName)")
                            .bold()
                            .font(.system(size: 24))
                            .minimumScaleFactor(0.1)
                            .foregroundColor(AppColor.defBlack)
                        Text("\(landmarkData!.landmarkLocation)")
                            .foregroundColor(Color.gray)
                            .fontWeight(.light)
                            .font(.system(size: 12))
                            .foregroundColor(AppColor.defBlack)
                    }
                    .padding(.leading, 5)
                    Spacer()
                    Button{
                        doClose()
                    }label: {
                        Image(systemName: "xmark")
                            .padding(.trailing, 25)
                            .padding(.bottom, 10)
                            .font(.system(size: 16))
                            .foregroundColor(.black)
                    }
                    
                }
                .padding(.leading,29)
                
                ImagesCarousel(imagesSet: .constant(landmarkData!.landmarkImages) )
                    .mask(
                        Rectangle()
                            .frame(width: 300, height: 180)
                            .cornerRadius(16)
                    )
                    .frame(width: 300, height: 180)
                
                ScrollView(){
                    Text("\(landmarkData!.landmarkDesc)")
                        .fontWeight(.light)
                        .font(.system(size: 12))
                        .foregroundColor(AppColor.defBlack)
                }
                .frame(width: 300, height: 60)
                .padding(.top, 9)
                .padding(.horizontal, 22)
                Spacer()
                
            }
            .padding(.top, 19)
            .position(x: posX! < -305 ? posY! < -180 ? posX!+675 : posX!+525 :posX!+170, y: posY! < -180 ? posY! + 375 : posY!+170)
            
        }
        .frame(width: 345, height: 345)
            
    }
}

struct BubbleCard_Previews: PreviewProvider {
    static var previews: some View {
        BubbleCard(landmarkData: Landmark(landmarkName: "Borobudur", landmarkLocation: "Magelang, Jawa Tengah", landmarkDesc: "aslkdjakldjlqkwelkasdjklasjdklasjdkljqwelkjaslkjdkalsdjalskdjsalkdaslkd", landmarkImages: kBorobudurImages), posX: 0, posY: 0, doClose: {})
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
