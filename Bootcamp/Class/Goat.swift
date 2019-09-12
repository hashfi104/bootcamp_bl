//
//  Goat.swift
//  Bootcamp
//
//  Created by Djaka Pradana on 12/09/19.
//  Copyright © 2019 Bukalapak. All rights reserved.
//

import Cocoa

class Goat: Animal {
    override var maxWeight: Int {
        return 70
    }
    
    override var weightLoss: Int {
        return 2
    }
    
    init(age: Int, weight: Int) {
        super.init(name: "Kambing", age: age, weight: weight)
    }
}
