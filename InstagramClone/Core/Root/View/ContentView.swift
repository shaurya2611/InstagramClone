//
//  ContentView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 04/06/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
    // initializing registration view model and passing it on in child views using @EnvironmentObject
    @StateObject var registrationViewModel = RegistrationViewModel()
    var body: some View {
        Group {
            if viewModel.userSession == nil {
                LoginView()
                    .environmentObject(registrationViewModel)
            }
            else{
                MainTabView()
            }
        }
    }
}

#Preview {
    ContentView()
}
