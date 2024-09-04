//
//  ContentView.swift
//  ChatApp
//
//  Created by Tolga Telseren on 8/31/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.crop.circle")
            Text("name")
            Spacer()
            Circle()
                .frame(width: 8)
                .background(Color.green)
        }
        .padding([.all], 8)
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
