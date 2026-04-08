//
//  MainViewViewModel.swift
//  TodoApplication
//
//  Created by Anirudh Nandy on 08/04/26.
//

import Foundation
internal import Combine
import FirebaseAuth

class MainViewViewModel: ObservableObject {
    
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?

    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
    
}
