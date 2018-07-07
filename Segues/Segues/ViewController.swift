//
//  ViewController.swift
//  Segues
//
//  Created by Jankowski on 7/6/18.
//  Copyright © 2018 Jankowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanReceive {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "goToSecondScreen", sender: self)
        
    }
    @IBAction func changeToBlue(_ sender: Any) {
        view.backgroundColor = UIColor.blue
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondScreen" {
            
            let secondVC = segue.destination as! SecondViewController
            
            secondVC.data = textField.text!
            
            secondVC.delegate = self
            
        }
    }
    
    func dataReceived(data: String) {
        label.text = data
        
    }
    
}

