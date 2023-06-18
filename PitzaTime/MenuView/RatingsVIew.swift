//
//  RatingsVIew.swift
//  PitzaTime
//
//  Created by Fenil Bhanavadiya on 2023-06-01.
//

import SwiftUI

struct RatingsView: View {
    var count = 5
    var ratings: [String] {
        let symbolName = "\(count).circle"
        return Array(repeating: symbolName, count: count)
    }
    
    var body: some View {
        HStack {
            ForEach(ratings, id: \.self) { item in
                Image(systemName: item)
                    .foregroundColor(.red)
            }
        }
    }
}


struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView()
    }
}
