//
//  ContentView.swift
//  DataPassingDemo
//
//  Created by saurabh.pareek on 09/12/24.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    @State private var usrpass: String = ""
    @State private var usrName: String = ""
    
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Login Screen")
                    .font(.title)
                    .padding()
                HStack {
                    Text("UserName")
                        .background(.black)
                        .foregroundColor(.white)
                        .padding(20)
                    TextField("Enter your User Name", text: $usrName)
                        .padding(.trailing)
                        .textFieldStyle(.roundedBorder)
                }
                
                .padding(.vertical, 20)
                .padding(.horizontal, 10)
                HStack {
                    Text("Password")
                        .background(.black)
                        .foregroundColor(.white)
                        .padding(20)
                    SecureField("Enter your Password", text: $usrpass)
                        .padding(.trailing)
                        .keyboardType(.default)
                        .textFieldStyle(.roundedBorder)
                }
                
                NavigationLink(destination: SecondView(usrpass: $usrpass, usrName: $usrName)) {
                    Text("LOGIN")
                        .padding(8)
                        .fontWidth(.standard)
                }
                .background(.black)
                .foregroundColor(.white)
                .font(.title)
                .padding(10)
                
            }
            .background(.yellow)
        }
        .navigationTitle("Login Screen")
    }
}

#Preview {
    ContentView()
}
