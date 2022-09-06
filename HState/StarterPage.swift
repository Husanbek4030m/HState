//
//  StarterPage.swift
//  HState
//
//  Created by Karavella on 06/09/22.
//

import SwiftUI

struct StarterPage: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    ObsPage()
                } label: {
                    Text("Task 1 -> ObservableObject").padding()
                }
                
                NavigationLink {
                    EnvPage()
                } label: {
                    Text("Task 2 -> EnvironmentObject").padding()
                }

            }
        }
    }
}

struct StarterPage_Previews: PreviewProvider {
    static var previews: some View {
        StarterPage()
    }
}
