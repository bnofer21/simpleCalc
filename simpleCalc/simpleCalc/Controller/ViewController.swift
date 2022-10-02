//
//  ViewController.swift
//  simpleCalc
//
//  Created by Юрий on 29.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var brain = Brain()
    
    @IBOutlet var buttonCollection: [UIButton]!
    
    @IBOutlet var actionCollection: [UIButton]!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if let buttonIndex = buttonCollection.firstIndex(of: sender) {
            buttonCollection[buttonIndex].setTitleColor(UIColor.gray, for: .normal)
            buttonCollection[buttonIndex].setTitleColor(UIColor.red, for: .highlighted)
            print("\(buttonIndex) tapped")
            brain.buttonTapped(at: buttonIndex)
        }
        labelManage()
        
    }
    
    @IBAction func actionTapped(_ sender: UIButton) {
        print("action tapped")
        if let actionIndex = actionCollection.firstIndex(of: sender) {
            actionCollection[actionIndex].setTitleColor(UIColor.red, for: .normal)
            brain.actionTapped(at: actionIndex)
        }
    }
    
    @IBAction func calculateTapped(_ sender: UIButton) {
        brain.calculate()
        labelManage()
    }
    
    @IBAction func clearTapped(_ sender: UIButton) {
        brain.clear()
        labelManage()
    }
    func labelManage() {
        resultLabel.text = "\(brain.showLabel())"
    }
}
    
    



