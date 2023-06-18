//
//  HistoryRowView.swift
//  PitzaTime
//
//  Created by Fenil Bhanavadiya on 2023-06-01.
//

import SwiftUI

struct HistoryRowView: View {
    var historyItem: HistoryItem
    var body: some View {
        HStack {
            Image("\(historyItem.id)_100w")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 85)
            Text("\(historyItem.name)")
                .font(.title)
            Spacer()
            Image(systemName: "chevron.right.circle")
                .font(.title)
        }
    }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView(historyItem: HistoryModel().historyItems[0])
    }
}
