//
//  TagView.swift
//  test_systems
//
//  Created by Alexey Zablotskiy on 31.01.2024.
//

import SwiftUI

struct TagView: View {
    var body: some View {
        ZStack() {
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 25)
                .cornerRadius(4)
            Text("Цена по карте")
                .foregroundColor(Color.white)
                .font(.system(size: 13))
        }
    }
}

#Preview {
    TagView()
}
