//
//  ContentView.swift
//  PitzaTime
//
//  Created by Fenil Bhanavadiya on 2023-06-01.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var orderModel: OrderModel
    @State var isMenuDisplayed: Bool = true
    
    var body: some View {
        VStack {
//            ContentHeaderView()
//                .layoutPriority(2.0)
            Button {
                isMenuDisplayed.toggle()
            } label: {
                PageTitleView(title: "Order Pizza", isDisplayingOrders: isMenuDisplayed)
                    .padding([.bottom], 1)
            }
            MenuListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 1.0 : 0.5)
            OrderListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 0.5 : 1.0)
        }
        .animation(.spring(), value: isMenuDisplayed)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(orderModel: OrderModel())
            .environmentObject(UserPreferences())
    }
}
