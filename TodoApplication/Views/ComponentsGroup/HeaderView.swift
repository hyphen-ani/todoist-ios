//
//  HeaderView.swift
//  TodoApplication
//
//  Created by Anirudh Nandy on 08/04/26.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subTitle: String
    let rotationAngle: Double
    let backgroundColor: Color
    let fontColor: Color
    
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle(degrees: rotationAngle))
                .offset(y: -150)
            
            VStack{
                Text(title)
                    .font(.system(size: 40))
                    .foregroundColor(fontColor)
                    .bold()
                Text(subTitle)
                    .font(.system(size: 30))
                    .foregroundColor(fontColor)
            }
            .offset(y: -90)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
    }
}

#Preview {
    HeaderView(title: "Title", subTitle: "Subtitle", rotationAngle: 15, backgroundColor: .pink, fontColor: .white)
}
