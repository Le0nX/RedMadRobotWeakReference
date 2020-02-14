//
//  CurrencyBusinessLogic.swift
//  WeakReference
//
//  Created by Denis Nefedov on 14.02.2020.
//  Copyright © 2020 Den4ik's Team. All rights reserved.
//

import Foundation


struct CurrencyData: Hashable {
    let currency: Double
}

protocol CurrencyUpdaterOutput {
    func didUpdate(_ data: CurrencyData)
}

final class CurrencyUpdater {
    let output: CurrencyUpdaterOutput
    
    init(output: CurrencyUpdaterOutput) {
        self.output = output
    }
    
    func update() {
        let randomCurrency = Double(arc4random_uniform(10) + 55)
        print(randomCurrency)
        output.didUpdate(CurrencyData(currency: randomCurrency))
    }
}
