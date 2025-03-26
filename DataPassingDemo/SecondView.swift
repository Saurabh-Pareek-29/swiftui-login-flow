//
//  SecondView.swift
//  DataPassingDemo
//
//  Created by saurabh.pareek on 09/12/24.
//

import SwiftUI
import Observation

@Observable class usrNameDataPass  {
     var usrDaata: String
    
    init(usrDaata: String) {
        self.usrDaata = usrDaata
    }
    
}

struct SecondView: View {
    
    @Binding var usrpass: String
    @Binding var usrName: String
    var usrData = usrNameDataPass(usrDaata: "")
    
    var body: some View {
            VStack {
                Text("Name is \(usrName)")
                Text("Password is \(usrpass)")
                
                Button(action: {
                    print(usrData.usrDaata)
                    
                }, label: {
                    Text("")
                    
                })
                
                
            }
            .navigationTitle("Second View")
            .navigationBarTitleDisplayMode(.automatic)
    }
}

#Preview {
    SecondView(usrpass: .constant(""), usrName: .constant(""))
}
