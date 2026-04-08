//
//  ContentView.swift
//  TodoApplication
//
//  Created by Anirudh Nandy on 08/04/26.
//

import SwiftUI
import SwiftData

struct MainView: View {
    var body: some View{
        NavigationView {
            LoginView()
        }
    }
}

struct MainView_Previous: PreviewProvider {
    static var previews: some View{
        MainView()
    }
}
