//
//  CreditScroll.swift
//  WWDC-IndonesiaUncovered
//
//  Created by Gregorius Yuristama Nugraha on 09/04/23.
//

import SwiftUI

struct CreditScroll: View {
    var doConfirm : () -> ()
    var body: some View {
        ZStack {
            Image("CreditScroll")
                .resizable()
                .frame(width: 650, height: 528)
                .shadow(radius: 4, y:2)
            VStack{
                Text("**Thanks To**\n")
                    .font(.system(size: 32))
                    .multilineTextAlignment(.center)
                    .foregroundColor(AppColor.defBlack)
                Text("[Paper Texture Background by bedneyimages](https://www.freepik.com/free-photo/white-texture_946233.htm#query=paper%20texture&position=0&from_view=search&track=ais) on Freepik\n[Parchment Graphic by brgfx](https://www.freepik.com/free-vector/old-parchment-papers_6905535.htm#query=scroll&position=1&from_view=search&track=sph) on Freepik\n[Curtain Graphics by pch.vector](https://www.freepik.com/free-vector/stage-red-curtains-flat-set-web-design-cartoon-fabric-drapery-movie-opera-vector-illustration-collection-window-drapery-decoration-concept_10613660.htm#query=curtain&position=2&from_view=search&track=sph) on Freepik\n[Indonesia Map Vectors by Vecteezy](https://www.vecteezy.com/free-vector/indonesia-map) \nCloud Vector Graphics by [Freepik](https://www.freepik.com/free-vector/cartoon-clouds-collection_15591096.htm#query=cloud&position=0&from_view=search&track=sph)\nLandmark Images from [Unsplash](https://unsplash.com/)")
                    .foregroundColor(.black)
                Spacer()
                Button{
                    self.doConfirm()
                }label: {
                    Text("Close")
                        .bold()
                        .font(.system(size: 24))
                        .padding()
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)
                            )
                }
                .background(Color("CreamColor"))
                .cornerRadius(8)
            }
            .frame(width: 595, height: 343)
   
        }
    }
}

struct CreditScroll_Previews: PreviewProvider {
    static var previews: some View {
        CreditScroll(doConfirm: {})
    }
}
