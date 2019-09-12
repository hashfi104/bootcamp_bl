//
//  main.swift
//  Bootcamp
//
//  Created by Hashfi Alfian on 10/09/19.
//  Copyright © 2019 Bukalapak. All rights reserved.
//

import Foundation

enum AnimalName: String {
    case deer = "Rusa"
    case goat = "Kambing"
    case sheep = "Domba"
    case elephant = "Gajah"
}

var animals : [Animal] = []

func input() -> String {
    let keyboard = FileHandle.standardInput
    let inputData = keyboard.availableData
    if let text = NSString(data: inputData, encoding:String.Encoding.utf8.rawValue) {
        return text as String
    }
    return ""
}

func addAnimal(data: [String]){
    if let age = Int(data[1]), let weight = Int(data[2]) {
        let animalName = data.first!
        var animal : Animal?
        
        if let animalName = AnimalName.init(rawValue: animalName) {
            switch animalName {
            case .deer :
                animal = Deer(age: age, weight: weight)
            case .goat :
                animal = Goat(age: age, weight: weight)
            case .sheep :
                animal = Sheep(age: age, weight: weight)
            case .elephant :
                animal = Elephant(age: age, weight: weight)
            }
        } else {
            animal = Animal(name: data.first!, age: age, weight: weight)
        }
        
        if let animal = animal {
            animals.append(animal)
        }
    }
}

func showActivity(day: Int) {
    print("Hari #\(day+1)")
    animals.forEach { (animal) in
        animal.dayActivity(day: day)
        animal.nightActivity()
    }
}

let firstArray = readLine()?.split {$0 == " "}.map (String.init)

if let stringArray = firstArray {
    if let countString = stringArray.first {
        if let count = Int(countString) {
            // Input count
            for _ in 0..<count {
                let array = readLine()?.split {$0 == " "}.map (String.init)
                addAnimal(data: array!)
            }
        }
        
        // Day Count
        if let dayCount = Int(stringArray[1]) {
            for i in 0..<dayCount {
                showActivity(day: i)
            }
        }
    }
}
