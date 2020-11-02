//
//  ContentView.swift
//  tdd
//
//  Created by Alex Tamoykin on 8/6/20.
//  Copyright © 2020 Right Balance. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var items: [Item] = ItemService(isTest: true).getItems()

    var body: some View {
        List(items) { item in
            VStack(alignment: .leading) {
                Text(item.title)
                Text(item.isCompleted ? "✅" : "❌")
            }

            Spacer()

            Button(action: {
                self.complete(item: item)
            }, label: {
                Text("Complete")
            })
        }
    }

    private func complete(item: Item) {
        guard let index = self.items.firstIndex(where: { $0.id == item.id }) else { return }
        self.items[index].isCompleted.toggle()
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
