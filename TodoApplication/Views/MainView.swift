//
//  ContentView.swift
//  TodoApplication
//
//  Created by Anirudh Nandy on 08/04/26.
//

import SwiftUI
import SwiftData

struct MainView: View {
    
    @StateObject var mainViewModel = MainViewViewModel()
    
    var body: some View{
        
        if mainViewModel.isSignedIn, !mainViewModel.currentUserId.isEmpty {
            TodoListView()
        } else {
            LoginView()
        }
    
    }
}

struct MainView_Previous: PreviewProvider {
    static var previews: some View{
        MainView()
    }
}
