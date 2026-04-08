//
//  RegisterView.swift
//  TodoApplication
//
//  Created by Anirudh Nandy on 08/04/26.
//

import SwiftUI

struct RegisterView: View {
    
    @State var fullName = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            HeaderView(title: "Register Now", subTitle: "Create Your Account", rotationAngle: -15, backgroundColor: .yellow, fontColor: .black)
            
            Form{
                TextField("Full Name", text: $fullName)
                TextField("Your Email Address", text: $email)
                SecureField("Password", text: $password)
                CButton(title: "Create Account", backgroundColor: Color.black)
                
                
            }
            .scrollContentBackground(.hidden)
            .background(Color.init(uiColor: .systemBackground))
            .offset(y: -50)
            
            
            Spacer()
            
            
        }
    }
}

#Preview {
    RegisterView()
}
