//
//  Wage.swift
//  window-shopper
//
//  Created by Justin  Doty on 9/23/17.
//  Copyright © 2017 Justin  Doty. All rights reserved.
//

import Foundation


class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
