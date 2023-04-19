//
//  WelcomeScroll.swift
//  WWDC-IndonesiaUncovered
//
//  Created by Gregorius Yuristama Nugraha on 09/04/23.
//

import SwiftUI

struct WelcomeScroll: View {
    var doConfirm : () -> ()
    var body: some View {
        ZStack{
            Image("WelcomeScroll")
                .resizable()
                .frame(width: 650, height: 528)
                .shadow(radius: 4, y:2)
            VStack{
                Group{
                    Text("**Let's Explore Indonesia !**")
                        .font(.largeTitle)
                        + Text("\n\nDiscover the many faces of Indonesia through our incredible landmarks. Let us show you the vibrant colors and unique perspectives that make our country so special.")
                        .font(.system(size: 24))
                }
                .frame(width: 449, height: 342)
                .multilineTextAlignment(.center)
                .foregroundColor(AppColor.defBlack)
                Button{
                    self.doConfirm()
                }label: {
                    Text("Okay, Let's Explore !")
                        .bold()
                        .font(.system(size: 18))
                        .padding()
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)
                            )
                }
//                .padding()
                .background(Color("CreamColor"))
                .cornerRadius(8)
                .offset(x: 160)
            }
            .offset(y: 20)
   
        }

    }
}

struct WelcomeScroll_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScroll(doConfirm: {})
    }
}
