//
//  TodoApplicationApp.swift
//  TodoApplication
//
//  Created by Anirudh Nandy on 08/04/26.
//

import SwiftUI
import FirebaseCore
import SwiftData

@main
struct TodoApplicationApp: App {
    
    init (){
        FirebaseApp.configure();
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
