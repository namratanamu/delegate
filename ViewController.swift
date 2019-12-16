//
//  ViewController.swift
//  delegatesInSwift
//
//  Created by Felix ITs 08 on 13/10/18.
//  Copyright © 2018 Felix. All rights reserved.
//

import UIKit

 class ViewController: UIViewController,UpdateLabelTextDelegate {

    @IBOutlet var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
                // Do any additional setup after loading the view, typically from a nib.
    }
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let next = segue.destination as! NextViewController
        next.delegate = self
  

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func updateLabelText(withText text: String)  {
        label.text = text
    }


}

