//
//  ImagesCarousel.swift
//  WWDC-IndonesiaUncovered
//
//  Created by Gregorius Yuristama Nugraha on 13/04/23.
//

import SwiftUI

struct ImagesCarousel: View {
    @State private var currentIndex = 0
    @Binding var imagesSet: [Image]?

    var body: some View {
        GeometryReader { geo in
            ZStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 0) {
                        ForEach(imagesSet!.indices, id: \.self) { index in
                            imagesSet![index]
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width)
                        }
                    }
                }
                .content.offset(x: -CGFloat(currentIndex-1) * geo.size.width)
                .frame(width: geo.size.width, height: geo.size.height)
                .onChange(of: currentIndex) { _ in
                    withAnimation(.easeInOut(duration: 0.3)) {
                    }
                }
                
                HStack {
                    Button(action: {
                        withAnimation {
                            currentIndex -= 1
                            if currentIndex < 0 {
                                currentIndex = imagesSet!.count - 1
                            }
                        }
                    }) {
                        Image(systemName: "chevron.backward")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 10, height: 18)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Button(action: {
                        withAnimation {
                            currentIndex += 1
                            if currentIndex >= imagesSet!.count {
                                currentIndex = 0
                            }
                        }
                    }) {
                        Image(systemName: "chevron.forward")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 10, height: 18)
                            .foregroundColor(.white)
                    }
                }
                .padding()
            }
        }
        .background(Color.black)
//        .edgesIgnoringSafeArea(.all)
    }
}

struct ImagesCarousel_Previews: PreviewProvider {
    static var previews: some View {
        ImagesCarousel(imagesSet: .constant(kBorobudurImages) )
    }
}
