//
//  HistoryListView.swift
//  PitzaTime
//
//  Created by Fenil Bhanavadiya on 2023-06-01.
//

import SwiftUI

struct HistoryListView: View {
    
    var historyModel = HistoryModel()
    @Binding var imageID: Int
    
    var body: some View {
        NavigationView {
            List (historyModel.historyItems) { item in
                NavigationLink {
                    HistoryDetailView(historyItem: item, imageID: $imageID)
                } label: {
                    HistoryRowView(historyItem: item)
                }
            }
            .listStyle(.plain)
        }
    }
}

struct HistoryListView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryListView(imageID: .constant(0))
    }
}
