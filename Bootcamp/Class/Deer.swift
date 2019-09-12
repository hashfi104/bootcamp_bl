//
//  Deer.swift
//  Bootcamp
//
//  Created by Hashfi Alfian on 11/09/19.
//  Copyright © 2019 Bukalapak. All rights reserved.
//

import Foundation

class Deer : Animal {    
    override var maxWeight: Int {
        return 75
    }
    
    init(age: Int, weight: Int) {
        super.init(name: "Rusa", age: age, weight: weight)
    }
}
