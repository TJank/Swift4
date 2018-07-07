//
//  SecondViewController.swift
//  Segues
//
//  Created by Jankowski on 7/6/18.
//  Copyright © 2018 Jankowski. All rights reserved.
//

import UIKit

protocol CanReceive {
    
    func dataReceived(data: String)
    
}

class SecondViewController: UIViewController {
    
    var delegate : CanReceive?
    
    var data = ""

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = data

        // Do any additional setup after loading the view.
    }
    @IBAction func sendDataBack(_ sender: Any) {
        delegate?.dataReceived(data: textField.text!)
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
