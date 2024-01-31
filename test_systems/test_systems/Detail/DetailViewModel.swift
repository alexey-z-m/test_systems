//
//  DetailViewModel.swift
//  test_systems
//
//  Created by Alexey Zablotskiy on 31.01.2024.
//

import Foundation

enum TypePrice {
    case kilo
    case unit
}

protocol DetailViewModelProtocol {
    var data: ProductModel { get set }
    func getRate() -> String
    func declension(number: Int) -> String
    func getPriceKilo(withSale sale: Bool) -> String
    func getPriceWithSale() -> Double
}

final class DetailViewModel: DetailViewModelProtocol {

    var data: ProductModel = ProductModel.mock

    func getRate() -> String {
        var rate: Double = 0
        var sum: Double = 0
        data.reviews.forEach({ review in
            sum += review.rate
        })
        rate = sum / Double(data.reviews.count)
        return String(format: "%.1f", rate)
    }

    func getPriceKilo(withSale sale: Bool) -> String {
        if sale {
            return String(format: "%.1f", getPriceWithSale() / 200 * 1000)
        } else {
            return String(format: "%.1f", data.unitPrice / 200 * 1000)
        }
    }

    func getPriceWithSale() -> Double {
        guard let sale = Double(data.sale) else { return 0 }
        return data.unitPrice - data.unitPrice / 100 * sale
    }

    func declension(number: Int) -> String {
            var result = "отзывов"
            let lastTwoDigits = number % 100
            let lastOneDigits = number % 10
            if lastOneDigits == 1 {
                result = "отзыв"
            }

            if lastOneDigits > 1 && lastOneDigits < 5 {
                result = "отзыва"
            }

            if lastTwoDigits >= 11 && lastTwoDigits <= 19 {
                result = "отзывов"
            }

            return result
        }
}
