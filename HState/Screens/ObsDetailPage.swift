//
//  ObsDetailPage.swift
//  HState
//
//  Created by Karavella on 06/09/22.
//

import SwiftUI

struct ObsDetailPage: View {
    @ObservedObject var user: Users
    var body: some View {
        VStack {
            Text("Login: \(user.login)")
            
            Text("Psw: \(user.psw)")
        }
    }
}

struct ObsDetailPage_Previews: PreviewProvider {
    static var previews: some View {
        ObsDetailPage(user: Users())
    }
}
