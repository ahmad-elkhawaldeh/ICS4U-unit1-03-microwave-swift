//
//  Microwave.swift
//
//  Created by Ahmad El-khawaldeh
//  Created on 2020-01-01
//  Version 1.0
//  Copyright (c) 2020 MTHS. All rights reserved.
//
//  The Microwave  program
//

import Foundation

let PIZZATIME: Double = 45.0
let SUBTIME: Double = 60.0
let SOUPTIME: Double = 105.0
let AMOUNTTWO: Double = 1.5
let AMOUNTTHREE: Double = 2.0
let SECINMIN: Double = 60.0
let SECINMININT: Int = 60
let ONE: Double = 1.0
let TWO: Double = 2.0
let THREE: Double = 3.0

func foodType(foodTypevar: String) -> Double {
  if foodTypevar == "pizza" || foodTypevar == "Pizza" {
    return PIZZATIME
  } else if foodTypevar == "Sub" || foodTypevar == "sub" {
    return SUBTIME
  } else if foodTypevar == "soup" || foodTypevar == "Soup" {
    return SOUPTIME
  } else {
    print("\nPlease insert one of the 3 types of food")
    exit(0)
  }
}

func amountOfFood(amountOfFoodvar: Double) -> Double {
  if amountOfFoodvar == ONE {
    return ONE
  } else if amountOfFoodvar == TWO {
    return AMOUNTTWO
  } else if amountOfFoodvar == THREE {
    return AMOUNTTHREE
  } else {
    print("\nPlease, insert an integer between 1 and 3")
    exit(0)
  }
}

print("What food are you heating up? Soup, sub or pizza?")

var input = readLine()
let foodInput: String = input!
let timePerFood = foodType(foodTypevar: foodInput)

print("How many do you want to heat up? (max 3)")

input = readLine()
let amountInput = Double(input!)
let timePerAmount = amountOfFood(amountOfFoodvar: (amountInput)!)
let timeOfHeating: Double = timePerAmount * timePerFood
let minutes: Int = Int(timeOfHeating / SECINMIN)
// https://stackoverflow.com/questions/40495301/what-does-is-unavailable-use-truncatingremainder-instead-mean
let seconds: Double = timeOfHeating.truncatingRemainder(dividingBy: SECINMIN)
print(
  "\nthe total cook time is \(minutes)"
  + " min and \(seconds) seconds."
)

print("\nDone.\n")
