//
//  ContentView.swift
//  NavigationDemo
//
//  Created by Basel Baragabah on 23/03/2021.
//

import SwiftUI

struct ContentView: View {
    @State var nav = false
    
    var body: some View {
        
        NavigationView {
            VStack {
            NavigationLink(destination: Page1View(nav: $nav), isActive: $nav,                               label: { EmptyView() })
                .isDetailLink(false)
                
            Button("Navigate to View 2") {
                nav = true
            }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
