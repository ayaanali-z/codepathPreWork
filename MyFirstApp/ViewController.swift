//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Ayaan Ali on 7/7/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    let defaultFontSize: CGFloat = 47.0
    let defaultFontSize2: CGFloat = 22.0
    let defaultFontSize3: CGFloat = 17.0
    let defaultTextColor: UIColor = .black
    let defaultBackgroundColor: UIColor = .white
    let defaultTitle: String = "Georgia"
    let defaultFont: String = "Hoefler Text"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor;
        
    }

    
    func changeColor() -> UIColor{

        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        
    }
    
    @IBAction func randomTextColor(_ sender: UIButton) {
        
        let labelColorOne = changeColor()
        let labelColorTwo = changeColor()
        let labelColorThree = changeColor()
        
        label1.textColor = labelColorOne
        label2.textColor = labelColorTwo
        label3.textColor = labelColorThree
    }
    @IBAction func switchTextColor(_ sender: UIButton) {
        
            
            let labelColorOne = changeColor()
            let labelColorTwo = changeColor()
            let labelColorThree = changeColor()
            
            label1.textColor = labelColorOne
            label2.textColor = labelColorTwo
            label3.textColor = labelColorThree
            
    }
    
    @IBAction func randomizeFont(_ sender: UIButton) {
        let fonts = [
            "Arial",
            "Helvetica",
            "Verdana",
            "Times New Roman",
            "Courier New",
            "Georgia",
            "Trebuchet MS",
            "Arial Narrow",
            "Impact",
            "Palatino",
            "Gill Sans",
            "Cochin",
            "Optima",
            "Futura",
            "Baskerville",
            "Didot",
            "American Typewriter",
            "Hoefler Text",
            "Copperplate",
            "Verdana",
            "Comic Sans MS"
        ]

        if let randomFontName = fonts.randomElement() {
            label1.font = UIFont(name: randomFontName, size: defaultFontSize)
        }

        if let randomFontName = fonts.randomElement() {
            label2.font = UIFont(name: randomFontName, size: defaultFontSize2)
        }

        if let randomFontName = fonts.randomElement() {
            label3.font = UIFont(name: randomFontName, size: defaultFontSize3)
        }
        
    }

    @IBAction func reset(_ sender: UIButton) {
        
        label1.textColor = defaultTextColor
        label2.textColor = defaultTextColor
        label3.textColor = defaultTextColor

        label1.font = UIFont(name: defaultTitle, size:defaultFontSize)
        label2.font = UIFont(name: defaultFont, size:defaultFontSize2)
        label3.font = UIFont(name: defaultFont, size:defaultFontSize3)
        
        view.backgroundColor = defaultBackgroundColor
    }
    
}

