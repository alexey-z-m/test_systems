//
//  DetailView.swift
//  test_systems
//
//  Created by Alexey Zablotskiy on 30.01.2024.
//

import SwiftUI

struct DetailView: View {
    @State var viewModel: DetailViewModelProtocol
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
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
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
        .navigationBarItems(trailing: rightButtons)
    }

    var btnBack : some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "arrow.backward")
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.green)
        }
    }
    var rightButtons : some View {
        HStack {
            Button(action: {}) {
                Image(systemName: "list.bullet.rectangle.portrait")
                    .foregroundColor(.green)
            }
            Button(action: {}) {
                Image(systemName: "square.and.arrow.up")
                    .foregroundColor(.green)
            }
            Button(action: {}) {
                Image(systemName: "heart")
                    .foregroundColor(.green)
            }
        }
    }
}

#Preview {
    DetailView(viewModel: DetailViewModel())
}
