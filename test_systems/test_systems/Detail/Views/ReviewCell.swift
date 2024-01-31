//
//  ReviewCell.swift
//  test_systems
//
//  Created by Alexey Zablotskiy on 31.01.2024.
//

import SwiftUI

struct ReviewCell: View {
    var data: Review
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(data.profileName)
                .font(.system(size: 20, weight: .bold, design: .rounded))
            Text(data.date)
                .foregroundColor(.gray)
            Star(rate: data.rate)
            Text(data.review)
                .font(.system(size: 15))

        }
        .frame(width: 250,height: 150)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 5)
        .padding(12)
    }
}

#Preview {
    ReviewCell(data: Review(profileName: "Александр В.", date: "7 мая 2021", rate: 4.0, review: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими"))
}


struct Star: View {
    var rate: Double
    var body: some View {
        HStack(spacing: 2){
            Image(systemName: "star.fill").font(.system(size: 15)).foregroundColor(.yellow)
            Image(systemName: "star.fill").font(.system(size: 15)).foregroundColor(.yellow)
            Image(systemName: "star.fill").font(.system(size: 15)).foregroundColor(.yellow)
            Image(systemName: "star.fill").font(.system(size: 15)).foregroundColor(.yellow)
            Image(systemName: "star.fill").font(.system(size: 15)).foregroundColor(.gray)

        }
    }
}
