//
//  WeakRefference.swift
//  WeakReference
//
//  Created by Denis Nefedov on 14.02.2020.
//  Copyright © 2020 Den4ik's Team. All rights reserved.
//

import Foundation

final class WeakRefference<T: AnyObject> {
    weak var ref: T?
    
    init (_ object: T) {
        self.ref = object
    }
}

extension WeakRefference: CurrencyPresenterOutput where T: CurrencyPresenterOutput {
    func present(_ currency: CurrencyPresenterModel) {
        ref?.present(currency)
    }
}
