//
//  Model.swift
//  simpleCalc
//
//  Created by Юрий on 29.09.2022.
//

import Foundation

class Brain {
    
    let arrayButton = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    var actionIndexOfTappedButton: Int?
    var value1: Double?
    var value2: Double?
    var show: Double?
    
    func showLabel() -> Double {
        guard let unwrappedShow = show else { return 0 }
        return unwrappedShow
    }
    
    func buttonTapped(at index: Int) {
        if actionIndexOfTappedButton != nil {
            if value2 == nil {
                value2 = Double(arrayButton[index])
            } else {
                value2! *= 10
                value2! += Double(arrayButton[index])
            }
            show = value2
        } else {
            if value1 == nil {
                value1 = Double(arrayButton[index])
            } else {
                value1! *= 10
                value1! += Double(arrayButton[index])
            }
            show = value1
        }
    }
    
    func actionTapped(at index: Int) {
        actionIndexOfTappedButton = index
    }
    
    func calculate() {
        var result: Double = 0
        if value1 != nil, value2 != nil {
            print("First is \(value1!)")
            print("Second is \(value2!)")
            switch actionIndexOfTappedButton {
            case 0:
                result = value1! + value2!
            case 1:
                result = value1! - value2!
            case 2:
                result = value1! / value2!
            case 3:
                result = value1! * value2!
            default:
                break
            }
        }
        value1 = result
        value2 = nil
        print(result)
        show = result
    }
    
    func clear() {
        show = 0
        value1 = nil
        value2 = nil
        actionIndexOfTappedButton = nil
    }
    
}
