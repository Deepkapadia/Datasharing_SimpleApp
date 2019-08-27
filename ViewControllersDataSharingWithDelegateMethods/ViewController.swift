//
//  ViewController.swift
//  ViewControllersDataSharingWithDelegateMethods
//
//  Created by DeEp KapaDia on 09/07/19.
//  Copyright © 2019 DeEp KapaDia. All rights reserved.
//

import UIKit

class ViewController: UIViewController,CanReceive{
    
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var MessageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func PassDataBtn(_ sender: Any) {
        
        performSegue(withIdentifier: "PassData", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PassData" {
            let secondVC = segue.destination as! SeconViewController
            secondVC.data = MessageTextField.text!
            //PassData from Second View.
            secondVC.delegate = self
        }
    }
    @IBAction func changBGbrn(_ sender: Any) {
        
        view.backgroundColor = UIColor.blue
        
    }
    
    //Protocol Declaration.! with Delegate.
    func daraReceived(data: String) {
        labelText.text = data
    }
    
}

