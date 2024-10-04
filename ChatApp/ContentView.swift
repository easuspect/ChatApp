//
//  ContentView.swift
//  ChatApp
//
//  Created by Tolga Telseren on 8/31/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
           ChatListView()
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
