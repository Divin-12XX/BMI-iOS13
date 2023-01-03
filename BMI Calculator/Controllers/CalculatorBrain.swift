//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Nivid Patel on 2023-01-01.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    var advice: String?
    var color: UIColor?
    
    func getBMIValue() -> String{
        let bmiTo1DecPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
           bmi = BMI(value: bmiValue, advice: "Eat more pies", colour: UIColor {_ in return #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)})
            }
        else if bmiValue < 24.9{
           bmi = BMI(value: bmiValue, advice: "Fit as Fiddle", colour: UIColor {_ in return #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)})
        }
        else{
           bmi = BMI(value: bmiValue, advice: "Eat less pies", colour: UIColor {_ in return #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)})
        }
        
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.colour ?? UIColor {_ in return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)}
    }
    
    
}
