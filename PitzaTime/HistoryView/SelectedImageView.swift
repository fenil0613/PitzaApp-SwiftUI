//
//  SelectedImageView.swift
//  PitzaTime
//
//  Created by Fenil Bhanavadiya on 2023-06-02.
//

import SwiftUI

struct SelectedImageView: View {
    
    var image: String = "pizza-1"
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .cornerRadius(13)
            .padding()
            .shadow(color: .black, radius: 13)
    }
}

struct SelectedImageView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedImageView()
    }
}
