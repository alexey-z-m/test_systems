//
//  ReviewView.swift
//  test_systems
//
//  Created by Alexey Zablotskiy on 31.01.2024.
//

import SwiftUI

struct ReviewView: View {
    var reviews: [Review]
    var body: some View {
        VStack() {
            HStack() {
                Text("Отзывы")
                    .font(.system(size: 25,weight: .bold, design: .rounded))
                Spacer()
                Text("Все \(reviews.count)")
                    .font(.system(size: 17, weight: .bold, design: .rounded))
                    .foregroundColor(.green)
            }
            .padding(.horizontal)
            ScrollView(.horizontal,showsIndicators: false) {
                LazyHStack() {
                    ForEach(reviews, id: \.self) { review in
                        ReviewCell(data: review)
                    }
                }
            }
            .padding(.leading, 10)

            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack() {
                    Text("Оставить отзыв")
                        .font(.system(size: 17, weight: .bold, design: .rounded))
                        .foregroundColor(.green)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.green, lineWidth: 3)
                                .frame(height: 40)
                        )
                }

            })
            .padding(.horizontal)
        }
    }
}
