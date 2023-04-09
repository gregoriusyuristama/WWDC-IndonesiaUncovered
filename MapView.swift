//
//  MapView.swift
//  WWDC-IndonesiaUncovered
//
//  Created by Gregorius Yuristama Nugraha on 09/04/23.
//

import SwiftUI

struct MapView: View {
    var body: some View {
            VStack{
                HStack{
                    Image("CloudImage")
                        .resizable()
                        .frame(width: 229, height: 90)
                        .offset(y: -32.5)
                    Image("CloudImage")
                        .resizable()
                        .frame(width: 229, height: 90)
                        .offset(y: -83.5)
                    Rectangle()
                        .frame(width: 250, height: 166)
                        .foregroundColor(.clear)
                    Image("CloudImage")
                        .resizable()
                        .frame(width: 229, height: 90)
                        .offset(y: -20)
                    Image("CloudImage")
                        .resizable()
                        .frame(width: 229, height: 90)
                        .offset(y: -70)
                }
                Image("IndonesiaMap")
                    .resizable()
                    .frame(width: 984, height: 395)
                HStack(spacing: 345){
                    Text("Click on the dots to explore Indonesia !")
                        .bold()
                        .font(.system(size: 24))
//                        .offset(x: 89)
//                    Spacer()
                    Button{
                        
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
//                    .offset(x: -98)
                }
            }
//        .background(Color("CreamColor"))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
