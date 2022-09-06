//
//  ObsPage.swift
//  HState
//
//  Created by Karavella on 06/09/22.
//

import SwiftUI

struct ObsPage: View {
    @Environment(\.presentationMode) var pr
    @ObservedObject var obj:Users = Users()
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Login", text: $obj.login)
                    .padding(8)
                    .background(RoundedRectangle(cornerRadius: 10)
                        .stroke(.black.opacity(0.2), lineWidth: 1))
                
                
                TextField("Password", text: $obj.psw)
                    .padding(8)
                    .background(RoundedRectangle(cornerRadius: 10)
                        .stroke(.black.opacity(0.2), lineWidth: 1))
                
                NavigationLink {
                    ObsDetailPage(user: obj)
                } label: {
                    Text("Show")
                        .frame(maxWidth: .infinity)
                        .padding(8)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 10).fill(.blue))
                }
                
                
                
            }.padding()
                .navigationBarTitle("Obs", displayMode: .inline)
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

struct ObsPage_Previews: PreviewProvider {
    static var previews: some View {
        ObsPage()
    }
}
