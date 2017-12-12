//
//  Wage.swift
//  window-shopper
//
//  Created by Greg Smorag on 12/12/2017.
//  Copyright © 2017 Greg Smorag. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
