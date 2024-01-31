//
//  TabBarView.swift
//  test_systems
//
//  Created by Alexey Zablotskiy on 30.01.2024.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            DetailView(viewModel: DetailViewModel())
                .tabItem { Label("Главная", systemImage: "tree.circle") }
            
            Text("Каталог")
                .tabItem { Label("Каталог", systemImage: "circle.grid.2x2") }
            
            Text("Корзина")
                .tabItem { Label("Корзина", systemImage: "cart") }
            
            Text("Профиль")
                .tabItem { Label("Профиль", systemImage: "person") }
        }
        .accentColor(.green)
    }
}

#Preview {
    TabBarView()
}
