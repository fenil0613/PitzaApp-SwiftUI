//
//  MenuRowView.swift
//  PitzaTime
//
//  Created by Fenil Bhanavadiya on 2023-06-01.
//

import SwiftUI

struct MenuRowView: View {
    
    var menuItem: MenuItem = testMenuItem
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("\(menuItem.id)_100w")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text(menuItem.name)
                        .font(.title)
                        .fontWeight(.light)
                    RatingsView(count: menuItem.rating)
                }
                Spacer()
            }
            Text(menuItem.description)
        }
    }
}


struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView()
    }
}

