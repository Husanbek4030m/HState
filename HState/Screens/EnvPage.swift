//
//  EnvPage.swift
//  HState
//
//  Created by Karavella on 06/09/22.
//

import SwiftUI

struct EnvPage: View {
    @EnvironmentObject var user:Users
    @Environment(\.presentationMode) var pr
    var body: some View {
        NavigationView {
            VStack {
                TextField("Login", text: $user.login)
                    .padding(8)
                    .background(RoundedRectangle(cornerRadius: 10)
                        .stroke(.black.opacity(0.2), lineWidth: 1))
                
                
                TextField("Password", text: $user.psw)
                    .padding(8)
                    .background(RoundedRectangle(cornerRadius: 10)
                        .stroke(.black.opacity(0.2), lineWidth: 1))
                
                NavigationLink {
                    EnvDetailPage()
                } label: {
                    Text("Show")
                        .frame(maxWidth: .infinity)
                        .padding(8)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 10).fill(.blue))
                }
                
                
                
            }.padding()
                .navigationBarTitle("Env", displayMode: .inline)
                .navigationBarItems(leading: Button(action: {
                    pr.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                }))
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct EnvPage_Previews: PreviewProvider {
    static var previews: some View {
        EnvPage()
    }
}
