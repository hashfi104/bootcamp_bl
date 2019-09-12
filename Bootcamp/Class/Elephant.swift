//
//  Elephant.swift
//  Bootcamp
//
//  Created by Djaka Pradana on 12/09/19.
//  Copyright © 2019 Bukalapak. All rights reserved.
//

import Cocoa

class Elephant: Animal {
    override var weight: Int? {
        get {
            return super.weight
        }
        set {
            if let newValue = newValue,
                newValue > maxWeight {
                super.weight = maxWeight
            } else {
                super.weight = newValue
            }
        }
    }
    
    override var maxWeight: Int {
        return 500
    }
    
    override var weightGain: Int {
        return 5
    }
    
    override var weightLoss: Int {
        return 3
    }
    
    init(age: Int, weight: Int) {
        super.init(name: "Gajah", age: age, weight: weight)
    }
}
