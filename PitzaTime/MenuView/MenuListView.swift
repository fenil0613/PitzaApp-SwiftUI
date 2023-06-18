//
//  MenuListView.swift
//  PitzaTime
//
//  Created by Fenil Bhanavadiya on 2023-06-01.
//

import SwiftUI

struct MenuListView: View {
    
    @ObservedObject var orderModel: OrderModel
    var menuItems = MenuModel().menu
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            ListHeaderView(orderModel: orderModel, header: "Menu")
            
            NavigationView {
                List (menuItems) { item in
                    NavigationLink(destination: MenuDetailView(orderModel: self.orderModel, menuItem: item)) {
                        MenuRowView(menuItem: item)
                    }
                }
                .listStyle(.plain)
            }
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView(orderModel: OrderModel())
    }
}

