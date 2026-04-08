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
    let action: () -> Void
    
    var body: some View {
        Button{
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                    .frame(height: 50)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
            .padding()
            
        }
    }
}

#Preview {
    CButton(title: "Title", backgroundColor: .black){
        // Action
    }
}
