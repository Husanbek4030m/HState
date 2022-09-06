//
//  EnvDetailPage.swift
//  HState
//
//  Created by Karavella on 06/09/22.
//

import SwiftUI

struct EnvDetailPage: View {
    @EnvironmentObject var user : Users
    var body: some View {
        VStack {
            Text("Login: \(user.login)")
            
            Text("Psw: \(user.psw)")
        }
    }
}

struct EnvDetailPage_Previews: PreviewProvider {
    static var previews: some View {
        EnvDetailPage()
    }
}
