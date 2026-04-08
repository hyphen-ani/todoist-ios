//
//  RegisterView.swift
//  TodoApplication
//
//  Created by Anirudh Nandy on 08/04/26.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var registerViewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack{
            HeaderView(title: "Register Now", subTitle: "Create Your Account", rotationAngle: -15, backgroundColor: .yellow, fontColor: .black)
            
            Form{
                TextField("Full Name", text: $registerViewModel.fullName)
                    .autocorrectionDisabled()
                TextField("Your Email Address", text: $registerViewModel.email)
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password", text: $registerViewModel.password)
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                CButton(title: "Create Account", backgroundColor: Color.black){
                    registerViewModel.register()
                }
                
                
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
