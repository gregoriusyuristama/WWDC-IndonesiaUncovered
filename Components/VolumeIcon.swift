//
//  SwiftUIView.swift
//  
//
//  Created by Gregorius Yuristama Nugraha on 17/04/23.
//

import SwiftUI

struct VolumeIcon: View {
    @Binding var isMuted: Bool
    var body: some View {
        ZStack{
            Circle()
                .fill(Color("VolumeIconShadow"))
                .frame(width: 50, height: 50)
                .offset(x: -1.5, y: 2.5)
            Circle()
                .fill(Color("VolumeIconColor"))
                .frame(width: 50, height: 50)
            Image(systemName: isMuted ? "speaker.slash.fill" : "speaker.wave.2.fill")
                .font(.system(size: 24))
            
        }

    }
}

struct VolumeIcon_Previews: PreviewProvider {
    static var previews: some View {
        VolumeIcon(isMuted: .constant(false))
    }
}
