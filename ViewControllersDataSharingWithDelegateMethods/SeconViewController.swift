//
//  SeconViewController.swift
//  ViewControllersDataSharingWithDelegateMethods
//
//  Created by DeEp KapaDia on 09/07/19.
//  Copyright © 2019 DeEp KapaDia. All rights reserved.
//

import UIKit

//For DelegateMethods
protocol CanReceive {
    func daraReceived(data:String)
}

class SeconViewController: UIViewController {

    var delegate : CanReceive?
    var data = ""
    
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var MessageTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelText.text = data
        // Do any additional setup after loading the view.
    }
    
    @IBAction func passItBackBtn(_ sender: Any) {
        
      delegate?.daraReceived(data: MessageTextField.text!)
        dismiss(animated: true, completion: nil)
        
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
