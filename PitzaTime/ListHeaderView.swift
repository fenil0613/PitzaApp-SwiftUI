//
//  ListHeaderView.swift
//  PitzaTime
//
//  Created by Fenil Bhanavadiya on 2023-06-01.
//

import SwiftUI

struct ListHeaderView: View {
    
    @ObservedObject var orderModel: OrderModel = OrderModel()
    var header: String = "Menu"
    
    var body: some View {
        HStack {
            Text(header)
                .padding(.leading, 21)
                .foregroundColor(.purple)
                .font(.system(size: 21, weight: .bold))
            Spacer()
            Text(orderModel.formattedTotal)
                .fontWeight(.heavy)
                .padding(.trailing)
        }
        .foregroundColor(.white)
        .font(.headline)
        .background(.orange)
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView(orderModel: OrderModel())
    }
}
