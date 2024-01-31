//
//  PriceView.swift
//  test_systems
//
//  Created by Alexey Zablotskiy on 31.01.2024.
//

import SwiftUI

struct PriceView: View {
    @Binding var viewModel: DetailViewModelProtocol
    @State var stateForPicker = 0
    var body: some View {
        VStack {
            Picker("picker", selection: $stateForPicker) {
                Text("Шт")
                    .tag(0)
                    .font(.system(size: 17, weight: .bold))
                Text("Кг")
                    .tag(1)
                    .font(.system(size: 17, weight: .bold))
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal)
            
            HStack {
                VStack(alignment: .leading){
                    if stateForPicker == 0 {
                        Text("\(String(format: "%.1f",viewModel.getPriceWithSale())) ₽/шт")
                            .font(.system(size: 28, weight: .bold, design: .rounded))
                        Text("\(String(format: "%.1f", viewModel.data.unitPrice))")
                            .foregroundColor(Color.gray)
                            .strikethrough()
                    } else {
                        Text("\(viewModel.getPriceKilo(withSale: true)) ₽/кг")
                            .font(.system(size: 28, weight: .bold, design: .rounded))
                        Text("\(viewModel.getPriceKilo(withSale: false))")
                            .foregroundColor(Color.gray)
                            .strikethrough()
                    }

                }
                Spacer()
                HStack(spacing: 20){
                    Button(action: {}) {
                        Image(systemName: "minus")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                    }
                    VStack {
                        Text("1 шт")                            
                            .foregroundColor(Color.white)
                            .font(.system(size: 19, weight: .bold))
                        Text((String(format: "%.1f",viewModel.getPriceWithSale())))
                            .foregroundColor(Color.white)
                            .font(.system(size: 14))
                    }
                    Button(action: {}) {
                        Image(systemName: "plus")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                    }
                }
                .frame(width: 170, height: 50)
                .background(Color.green)
                .cornerRadius(25)
            }
            .padding(20)
            
        }
    }
}
