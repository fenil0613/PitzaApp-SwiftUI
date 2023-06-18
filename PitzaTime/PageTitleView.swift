//
//  PageTitleView.swift
//  PitzaTime
//
//  Created by Fenil Bhanavadiya on 2023-06-01.
//

import SwiftUI

let staticFont = Font.system(size: 22)

struct PageTitleView: View {
    
    @Environment(\.verticalSizeClass) var sizeClass
    
    var title: String
    var isDisplayingOrders: Bool? = nil
    
    var body: some View {
        HStack {
            Spacer()
            Text(title)
                .font(sizeClass != .compact ? .largeTitle : staticFont)
                .fontWeight(.heavy)
        }.overlay (
            Image(systemName: "chevron.up.circle")
                .rotationEffect(isDisplayingOrders ?? false ? Angle(degrees: 0.0) : Angle(degrees: 180.0))
                .animation(.easeInOut(duration: 0.5), value: isDisplayingOrders)
                .font(sizeClass != .compact ? .largeTitle : staticFont)
                .foregroundColor(isDisplayingOrders != nil ? Color.white : .clear)
                .padding()
                ,alignment: .leading
        )
        .background(.orange)
        .foregroundColor(Color(red: 1, green: 1, blue: 1))
    }
}

struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title: "Order Pizza", isDisplayingOrders: true)
    }
}
