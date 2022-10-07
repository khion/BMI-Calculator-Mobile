//
//  CalculatorBrain.swift
//  BMI Calculator Mobile
//
//  Created by Rodnick Gayem on 2022-10-06.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTO1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTO1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.937254902, green: 0.1040670174, blue: 0.1847068112, alpha: 0)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
    
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.6183943976, green: 0.8763086127, blue: 0, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.9386766914, green: 0.1040670174, blue: 0.1847068112, alpha: 1))
        }

    }
    

}
