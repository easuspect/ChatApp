//
//  ContentView.swift
//  ChatApp
//
//  Created by Tolga Telseren on 8/31/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabSelection: Int = 1
    
    
    var body: some View {
        
        NavigationStack {
            TabView(selection: $tabSelection) {
                ChatListView().tabItem{
                    Image(systemName: "message.badge")
                    Text("Chat List")
                }
                .tag(1)
                ProfileView().tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
                .tag(2)
            }
        }
    }
}

//#Preview {
//    ContentView()
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}
