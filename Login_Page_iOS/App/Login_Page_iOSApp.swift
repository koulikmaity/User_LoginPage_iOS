//
//  Login_Page_iOSApp.swift
//  Login_Page_iOS
//
//  Created by Koulik Maity on 14/07/23.
//

import SwiftUI
import Firebase

@main
struct Login_Page_iOSApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
