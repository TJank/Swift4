//
//  ViewController.swift
//  autoLayout
//
//  Created by Jankowski on 6/23/18.
//  Copyright © 2018 Jankowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let square = UIView(frame: CGRect(x:self.view.frame.width/2 - 75, y : self.view.frame.height/2 - 75, width: 150, height : 150))
        square.backgroundColor = UIColor.red
        self.view.addSubview(square)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

