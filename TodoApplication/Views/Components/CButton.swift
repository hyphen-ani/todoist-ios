//
//  ButtonView.swift
//  TodoApplication
//
//  Created by Anirudh Nandy on 08/04/26.
//

import SwiftUI

struct CButton: View {
    
    let title: String
    let backgroundColor: Color
    
    var body: some View {
        Button{
            
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                    .frame(height: 50)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
            
        }
    }
}

#Preview {
    CButton(title: "Title", backgroundColor: .black)
}
