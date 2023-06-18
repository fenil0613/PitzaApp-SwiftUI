//
//  OrderListView.swift
//  PitzaTime
//
//  Created by Fenil Bhanavadiya on 2023-06-01.
//

import SwiftUI

struct OrderListView: View {
    
    var orderModel: OrderModel
    
    var body: some View {
        VStack {
            List {
                Section(
                    header: ListHeaderView(orderModel: orderModel, header: "Your Order")
                ) {
                    ForEach(orderModel.orders) { item in
                        OrderRowView(orderItem: item)
                    }
                    .onDelete { offset in
                        orderModel.orders.remove(atOffsets: offset)
                    }
                }
            }
            .listStyle(.plain)
        }
    }
    
    func delete() {
        
    }
    
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel: OrderModel())
    }
}


