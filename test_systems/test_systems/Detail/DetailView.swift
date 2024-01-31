//
//  DetailView.swift
//  test_systems
//
//  Created by Alexey Zablotskiy on 30.01.2024.
//

import SwiftUI

struct DetailView: View {
    @State var viewModel: DetailViewModelProtocol
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                ProductView(viewModel: $viewModel)
                VStack (alignment: .leading, spacing: 8) {
                    Text("Описание")
                        .bold()
                    Text(viewModel.data.description)
                }
                SpecView(data: viewModel.data)
            }
            .padding()
            ReviewView(reviews: viewModel.data.reviews)
            Divider()
            PriceView(viewModel: $viewModel)
        }
    }
}

#Preview {
    DetailView(viewModel: DetailViewModel())
}
