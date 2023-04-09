//
//  WelcomeScroll.swift
//  WWDC-IndonesiaUncovered
//
//  Created by Gregorius Yuristama Nugraha on 09/04/23.
//

import SwiftUI

struct WelcomeScroll: View {
    var body: some View {
        ZStack{
            Image("WelcomeScroll")
                .resizable()
                .frame(width: 650, height: 528)
                .shadow(radius: 4, y:2)
            VStack{
                Text("**Welcome to Indonesia Uncovered !**\nDiscover the many faces of Indonesia through our incredible landmarks. Let us show you the vibrant colors and unique perspectives that make our country so special.")
                    .frame(width: 449, height: 342)
                    .font(.system(size: 32))
                    .multilineTextAlignment(.center)
                Button{
                    
                }label: {
                    Text("Confirm")
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
        WelcomeScroll()
    }
}
