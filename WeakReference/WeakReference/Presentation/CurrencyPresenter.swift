//
//  CurrencyPresenter.swift
//  WeakReference
//
//  Created by Denis Nefedov on 14.02.2020.
//  Copyright © 2020 Den4ik's Team. All rights reserved.
//

import Foundation

struct CurrencyPresenterModel {
    let currency: String
}

protocol CurrencyPresenterOutput {
    func present(_ currency: CurrencyPresenterModel)
}


final class CurrencyPresenter {
    let output: CurrencyPresenterOutput
    private let converter = NumberFormatter()
    
    init (output: CurrencyPresenterOutput,
          locale: Locale = Locale(identifier: "ru_RU")) {
        self.output = output
        self.converter.locale = locale
        self.converter.numberStyle = .currency
    }
}

extension CurrencyPresenter: CurrencyUpdaterOutput {
    func didUpdate(_ data: CurrencyData) {
        output.present(
                CurrencyPresenterModel(currency: converter.string(
                    from: NSNumber(value: data.currency)) ?? "0")
        )
    }
}
