//
//  SwiftUIView.swift
//  
//
//  Created by Gregorius Yuristama Nugraha on 16/04/23.
//

import SwiftUI

struct BubbleChatShape: Shape {
    let x: CGFloat
    let y: CGFloat
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // Define the points of the triangle based on the x and y position
        
        
        var point1 = CGPoint(x: x + 350, y: y + 400)
        var point2 = CGPoint(x: x + 100, y: y + 250)
        var point3 = CGPoint(x: x + 200, y: y + 100)


        
        if x < -305 {
//            point1 = CGPoint(x: x + 500, y: y + 400)
//            point2 = CGPoint(x: x + 400, y: y + 250)
//            point3 = CGPoint(x: x + 300, y: y + 100)
             point1 = CGPoint(x: x + 365, y: y + 400)
             point2 = CGPoint(x: x + 375, y: y + 250)
             point3 = CGPoint(x: x + 500, y: y + 250)
//            point1 = CGPoint(x: x , y: y + 400)
//            point2 = CGPoint(x: x + 100, y: y)
//            point3 = CGPoint(x: x + 300, y: y + 100)
        }
        
        if y < -180 {
             point1 = CGPoint(x: x + 380, y: y + 410)
             point2 = CGPoint(x: x + 500, y: y + 500)
             point3 = CGPoint(x: x + 500, y: y + 400)
            if x > -160 {
                 point1 = CGPoint(x: x + 360, y: y + 425)
                 point2 = CGPoint(x: x + 200, y: y + 540)
                 point3 = CGPoint(x: x + 200, y: y + 500)
            }
        }
        
        
        // Move to the first point of the triangle
        path.move(to: point1)
        
        // Add lines to the other two points of the triangle
        path.addLine(to: point2)
        path.addLine(to: point3)
        
        // Close the path to complete the triangle
        path.closeSubpath()
        
        let width: CGFloat = 345
        let height: CGFloat = 345
        let radius: CGFloat = 30
        
//        let x: CGFloat = rect.minX + (rect.width - width) / 2
//        let y: CGFloat = rect.minY + (rect.height - height) / 2

        var rPath = Path(roundedRect: CGRect(x: x, y: y, width: width, height: height), cornerSize: CGSize(width: radius, height: radius))
        
//        var rPath = Path(roundedRect: CGRect(x: x, y: y, width: width, height: height), cornerSize: CGSize(width: radius, height: radius))
        
        if x < -305{
            rPath = Path(roundedRect: CGRect(x: x+350, y: y, width: width, height: height), cornerSize: CGSize(width: radius, height: radius))
        }
        
        if y < -180 {
            rPath = Path(roundedRect: CGRect(x: x+500, y: y + 200, width: width, height: height), cornerSize: CGSize(width: radius, height: radius))
            if x > -160 {
                rPath = Path(roundedRect: CGRect(x: x, y: y + 200, width: width, height: height), cornerSize: CGSize(width: radius, height: radius))
            }
        }
//        
        
        path.addPath(rPath)
//        path.addRect(CGRect(x: x, y: y, width: 345, height: 345))
        
        return path
    }
}

struct CustomRoundedShape: Shape {
    func path(in rect: CGRect) -> Path {
        let width: CGFloat = 345
        let height: CGFloat = 345
        let radius: CGFloat = 30
        
        let x: CGFloat = rect.minX + (rect.width - width) / 2
        let y: CGFloat = rect.minY + (rect.height - height) / 2
        
        let path = Path(roundedRect: CGRect(x: x, y: y, width: width, height: height), cornerSize: CGSize(width: radius, height: radius))
        
        return path
    }
}


struct MyRectangle: Shape {
    var cornerRadius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: cornerRadius, height: cornerRadius))
        return path
    }
}


struct BubbleChatShape_Previews: PreviewProvider {
    static var previews: some View {
        BubbleChatShape(x: 0, y: 0)
                    .fill(.white)
                    .shadow(radius: 20)
//        InvertedTriangle(x: 500, y: 200)

        

    }
}
