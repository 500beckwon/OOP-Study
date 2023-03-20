//
//  VendingMachine.swift
//  OOP-Study
//
//  Created by ByungHoon Ann on 2023/03/19.
//

struct Cola: Drink {
    let name = "cola"
}

struct Ade: Drink {
    let name: String
}

struct Juice: Drink {
    let name = "juice"
}

class VendingMachine {
    var drinks: [Drink] = []
    
    func addDrink(drink: Drink) {
        drinks.append(drink)
    }
    
    func sell(drink: Drink) {
        print(drink.name)
    }
    
    func cancelDrink(drink: Drink) {
        if let index = drinks.firstIndex(where: { $0.name == drink.name }) {
            drinks.remove(at: index)
        }
    }
}
