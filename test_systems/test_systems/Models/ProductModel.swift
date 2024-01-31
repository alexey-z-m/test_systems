//
//  ProductModel.swift
//  test_systems
//
//  Created by Alexey Zablotskiy on 31.01.2024.
//

import SwiftUI

struct ProductModel {
    let id: String = UUID().uuidString
    let name: String
    let imageUrl: String
    let madeIn: Country
    let description: String
    let specifications: [Spec]
    let reviews: [Review]
    let unitPrice: Double
    let sale: String

}

extension ProductModel {
    static let mock = ProductModel(
        name: "Добавка \"Липа\" к чаю 200 г",
        imageUrl: "lipa",
        madeIn: Country(name: "Испания, Риоха", imageUrl: "spain"), 
        description: "Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов.",
        specifications: Spec.mock, 
        reviews: Review.mock,
        unitPrice: 120,
        sale: "5"
    )
}


struct Country {
    let name: String
    let imageUrl: String
}

struct Spec: Hashable {
    let name: String
    let description: String
}

extension Spec {
    static let mock: [Spec] = [
        Spec(name: "Производство", description: "Россия, Краснодарский край"),
        Spec(name: "Энергетическая ценность, ккал/100г", description: "25 ккал, 105 кДж"),
        Spec(name: "Жиры/100г", description: "0,1 г"),
        Spec(name: "Белки/100г", description: "1,3 г"),
        Spec(name: "Углеводы/100г", description: "3,3 г"),
        Spec(name: "Вес, шт", description: "200 г")
        ]
}

struct Review: Hashable {
    let id: String = UUID().uuidString
    let profileName: String
    let date: String
    let rate: Double
    let review: String

}

extension Review {
    static let mock: [Review] = [
        Review(profileName: "Александр В.", date: "7 мая 2021", rate: 4.0, review: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими"),
        Review(profileName: "Александр В.", date: "7 мая 2021", rate: 4.1, review: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими"),
        Review(profileName: "Александр В.", date: "7 мая 2021", rate: 4.2, review: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими")
        ]
}

