//
//  NextViewController.swift
//  delegatesInSwift
//
//  Created by Felix ITs 08 on 13/10/18.
//  Copyright © 2018 Felix. All rights reserved.
//

import UIKit
protocol UpdateLabelTextDelegate {
    func updateLabelText(withText:String)
}

class NextViewController: UIViewController {
    
    var delegate:UpdateLabelTextDelegate?
    
        override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet var textFieln,..k.,xtField!
    @IBAction func sendButton(_ sender: UIButton) {
        delegate?.updateLabelText(textField.text!)
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
