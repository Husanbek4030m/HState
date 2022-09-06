//
//  Users.swift
//  HState
//
//  Created by Karavella on 06/09/22.
//

import Foundation

public class Users: ObservableObject {
    @Published var login:String = ""
    
    @Published var psw:String = ""
}
