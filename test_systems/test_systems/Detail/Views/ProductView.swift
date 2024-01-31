//
//  ProductView.swift
//  test_systems
//
//  Created by Alexey Zablotskiy on 31.01.2024.
//

import SwiftUI

struct ProductView: View {
    @Binding var viewModel: DetailViewModelProtocol
    var body: some View {
        ZStack{
            Image(viewModel.data.imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: 230)
            VStack{
                HStack{
                    TagView()
                    Spacer()
                }
                Spacer()
            }

        }


        HStack() {
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            Text(viewModel.getRate())
            Text("| \(viewModel.data.reviews.count) \(viewModel.declension(number: viewModel.data.reviews.count))")
                .foregroundColor(.gray)
            Spacer()
            ZStack {
                Rectangle()
                    .fill(.red)
                    .frame(width: 50, height: 20)
                    .cornerRadius(6)
                Text("-\(viewModel.data.sale) %")
                    .foregroundColor(Color.white)
                    .font(.system(size: 13, weight: .bold))
            }
        }

        Text(viewModel.data.name)
            .font(.system(size: 34, weight: .bold, design: .rounded))
        HStack() {
            Image(viewModel.data.madeIn.imageUrl)
                .resizable()
                .frame(width: 30, height: 30)
                .cornerRadius(15)
            Text(viewModel.data.madeIn.name)
                .font(.system(size: 15))
        }
        .padding(.vertical, 15)
    }
}
