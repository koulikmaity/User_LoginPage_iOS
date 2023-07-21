//
//  ProfileView.swift
//  Login_Page_iOS
//
//  Created by Koulik Maity on 18/07/23.
//

import SwiftUI

struct ProfileView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        if let user = viewModel.currentUser {
            List{
                Section("Profile"){
                    HStack{
                        HStack {
                            Text(user.initials)
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .frame(width: 72, height: 72)
                                .background(Color(.systemGray3))
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading, spacing: 5){
                                Text(user.fullName)
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .padding(.top, 4)
                                
                                Text(user.email)
                                    .font(.footnote)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    
                }
                
                Section("General"){
                    HStack {
                        SettingsRowView(imageName: "gear", title: "Version", tintColor: .gray)
                        Spacer()
                        Text("1.0.0")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                
                Section("Account"){
                    Button {
                        print("Sign out...")
                        viewModel.signOut()
                    } label: {
                        SettingsRowView(imageName: "arrow.left.circle", title: "Sign Out", tintColor: .red)
                    }
                    Button {
                        print("Delete account...")
                    } label: {
                        SettingsRowView(imageName: "xmark.circle", title: "Delete account", tintColor: .red)
                    }

                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
