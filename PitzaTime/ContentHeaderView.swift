//
//  ContentHeaderView.swift
//  PitzaTime
//
//  Created by Fenil Bhanavadiya on 2023-06-01.
//

import SwiftUI

struct ContentHeaderView: View {
    var body: some View {
        VStack{
            HStack {
                Image("hand-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 85)
                Text("Pitza Time")
                    .font(.title)
            }
        }
    }
}

struct ContentHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentHeaderView()
    }
}
