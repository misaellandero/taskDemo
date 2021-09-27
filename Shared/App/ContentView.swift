//
//  ContentView.swift
//  Shared
//
//  Created by Misael Landero on 26/09/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View{
       
            #if os(macOS)
            SideBarNabigationView()
            #else
            TabBarNavigationView()
            #endif
        
    }
}
 

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
