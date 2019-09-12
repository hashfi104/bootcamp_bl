//
//  File.swift
//  Bootcamp
//
//  Created by Hashfi Alfian on 11/09/19.
//  Copyright © 2019 Bukalapak. All rights reserved.
//

import Foundation

class Animal {
    var name : String?
    var age : Int?
    var weight : Int?
    
    var maxWeight: Int {
        return 100
    }
    
    var minWeight: Int {
        return 10
    }
    
    init(name: String, age: Int, weight: Int) {
        self.name = name
        self.age = age
        self.weight = weight
    }
    
    func dayActivity(day: Int) {
        if let w = weight, let a = age, let name = name {
            switch w {
            case 1..<minWeight:
                let tempW = w+3
                weight = (tempW < minWeight ? minWeight : tempW)
            case minWeight..<maxWeight:
                weight = w+3
            default:
                weight = w-1
            }
            
            // Value for age
            age = a+day
            
            print("Kondisi \(name) di siang hari --> usia: \(age!) -- berat: \(weight!)")
        }
    }
    
    func nightActivity() {
        if let w = weight, let name = name {
            switch w {
            case 1..<minWeight:
                weight = minWeight
            default:
                weight = w-1
            }
            
            print("Kondisi \(name) di malam hari --> usia: \(age!) -- berat: \(weight!)")
        }
    }
}
