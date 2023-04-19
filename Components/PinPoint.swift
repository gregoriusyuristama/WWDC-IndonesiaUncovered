//
//  PinPoint.swift
//  WWDC-IndonesiaUncovered
//
//  Created by Gregorius Yuristama Nugraha on 10/04/23.
//

import SwiftUI

struct PinPoint: View {
    var posX: Double?
    var posY: Double?
    var landmark: Landmark?
    var index: Int?
    var doShowCard : (Double, Double, Landmark, Int) -> ()
    var body: some View {
        Button{
            self.doShowCard(posX!, posY!, landmark!, index!)
        }label: {
            Circle()
                .fill(Color("OuterCircleColor"))
                .frame(width: 12, height: 12)
                .overlay(
                    Circle()
                        .stroke(Color.white, lineWidth: 1)
                        .frame(width: 8, height: 8)
                )
        }

    }
}

struct PinPoint_Previews: PreviewProvider {
    static var previews: some View {
        PinPoint(doShowCard: {_,_,_,_ in })
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

struct PinPointData: Identifiable {
    let id = UUID()
    let x: CGFloat
    let y: CGFloat
    let landmark: Landmark
}
