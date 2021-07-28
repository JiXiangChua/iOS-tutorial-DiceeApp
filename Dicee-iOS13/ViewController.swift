//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    Interface Build outlet to access the particular UI component
    //IBOutlet allows me to reference a UI element.
    //The connection 'outlet' is usually use if you want to change the appearance of an UI element.
    @IBOutlet weak var diceImageView1: UIImageView! //use control + drag from the storyboard to this file.
    @IBOutlet weak var diceImageView2: UIImageView!
    
    //var leftDiceNumber = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Syntax: Who.WhatProperty = Value
        //diceImageView1.image = #imageLiteral(resourceName: "DiceSix") //type image literal and double click it to select which image you want.
        //diceImageView1.alpha = 0.5
        //aplha means opacity with 1 means 100% opqaue and 0 means transparent.
        
        //diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
        
    }
    //IB Actions connection type.
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //in swift var is a variable that you can change and let means constant
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        //Trigger something when the button is pressed.
        //print("Button got tapped.") //print to the console.
        //diceImageView1.image = #imageLiteral(resourceName: "DiceFour")
        //diceImageView2.image = #imageLiteral(resourceName: "DiceFour")
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        //the second [] specfiy which index of the array you want, with 0 as the starting index.
        //leftDiceNumber += 1 //the next time we pressed the roll button, the leftDiceNumber becomes 2.
        //NOTE: the var leftDiceNumber = 1 is not written in this function. If is written in this function then everytime the button is clicked, the leftDiceNumber will be reset to 1 becuz it runs that line of code first.
        
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
        //Int.random(in: 1...10)// (in: range) , ... means from 1 to 10
        
        //Another easier way to write picking an random element from an array is:
        //diceArray.randomElement()
        
        
        
    }
    

}

/*Explaination on
 override func viewDidLoad() {
    codes goes here
 
 }
 ViwDidLoad() means when the view loads up, then trigger these pieces of codes.
 
 */

/*Swift Naming conventions. commenting and String interpolation
 Naming Conventions
 camelCase - used in swift! whenever you name something in code
 kebab-case - seperated by a dash
 snake_case - seperated by underscore.
 
 Commenting
 // This is a single line comment
 /* Multiple line comment */
 
 Print statement
 print(Something to Print)
 Inserting bits of code in between bits of string ? :
 We can use \() to insert the code inside the parenthesis.
 print("Hello \(2+3) world")
 
 String Interpolation
 print("The result of 5 + 3 = \(5+3)")
 */

/* Swift Variables and Arrays
 add a var keyword to tell the computer that we are creating a new variable.
 
 Arrays are collection of items.
 Use square bracket to create an array in swift and seperate each item by comma.
 To access item from an array use a second bracket to indicate the index of the array, example:
 [angela, jack, phlilp][0] will give you angela
 Arrays can also be stored inside a variable
 var friends = [angela, jack, phlilp]
 To access: friends[0] give you angela
 
 
 */

/*Swift Constants, the range operator and randomisation
 Creating a constant:
 let myConstant = "Fixed Value"
 
 Basic Data Types:
 String - enclosed by 2 ""
 Int (integer) - refers to a whole number, no decimal places. 12, 34, 1000. It can also be negative as well.
 Float (floating point number) - 12.345, decimal numbers
 Double (doubles the amount of accuracy of a float) it can hold more numbers after the decimal place.
 Bool (boolean) - true / false
 
 Randomisation
 To generate random integer:
 Int.random(in: lower ... upper) //including the lower and upper bound
 
 Range Operator
 ... - this is a closed range operator where the range is inclusive of the upper bound
 ..< - this is a half-open range where the range is between lower and upper bound but exclude the upper bound
 
 Random Float
 Float.random(in: 1 ... 3)
 
 Random Bool
 Bool.random() / to generate randomly true or false
 
 Random Element from Array
 array.randomElement() //randomly select one element from the array
 
 Randomise Array
 array.shuffle() //change the position of the elements inside the array randomly.
 
 
 
 
 */

