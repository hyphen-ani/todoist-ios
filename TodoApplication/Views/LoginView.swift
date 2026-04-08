//
//  LoginView.swift
//  TodoApplication
//
//  Created by Anirudh Nandy on 08/04/26.
//

import SwiftUI
struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                //TODO: Header
                HeaderView(title: "Todoist", subTitle: "jot things down", rotationAngle: 15, backgroundColor: .pink, fontColor: .white)
                
                //TODO: LOGIN FORM
                Form {
                    TextField("Email Address", text: $email)
                    SecureField("Password", text: $password)
                    CButton(title: "Login", backgroundColor: Color.black)
                }
                .scrollContentBackground(.hidden)
                .background(Color.init(uiColor: .systemBackground))
                .offset(y: -40)
                
                
                
                //TODO: CREATE ACCOUNT
                VStack{
                    Text("New Around Here?")
                        .bold()
                    NavigationLink("Create an Account", destination: RegisterView())
                }
                .padding(.top, 10)
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
