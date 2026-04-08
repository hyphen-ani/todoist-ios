//
//  RegisterViewViewModel.swift
//  TodoApplication
//
//  Created by Anirudh Nandy on 08/04/26.
//

import Foundation
internal import Combine
import FirebaseAuth
import FirebaseFirestore

class RegisterViewViewModel: ObservableObject {
    @Published var fullName = ""
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func register(){
        
        guard validate() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            
            guard let userId = result?.user.uid else {
                return
            }
            
            self?.insertUserRecord(id: userId)
        }
        
    }
    
    private func insertUserRecord(id: String){
        let newUser = User(id: id, name: fullName, email: email, joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
    }
    
    private func validate() -> Bool{
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty,
              !fullName.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "Please Fill All Details"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Invalid Email"
            return false
        }
        
        guard password.count >= 6 else {
            errorMessage = "Password Needs More than 6 Characters"
            return false
        }
        
        return true
    }
}
