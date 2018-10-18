//
//  ViewController.swift
//  ProyectRobotsPattern
//
//  Created by Miguel Angel Arenas Correa on 16/10/18.
//  Copyright © 2018 Miguel Angel Arenas Correa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var loginBTN: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func login(_ sender: UIButton) {
        let usernameText = usernameTF!.text
        let passwordText = passwordTF!.text
        
        let correctUser = "user"
        let correctPassword = "123"
        if ((usernameText?.isEmpty)! || (passwordText?.isEmpty)!) {
            generateAlert(title: "Error", message: "The fields must be complete!")
        }else if (usernameText == correctUser && passwordText == correctPassword){
            goToDetailPage()
        }else{
            generateAlert(title: "Error", message: "User or Password incorrect!")
        }
    }
    
     func generateAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert,animated: true)
    }
    
    func goToDetailPage(){
        performSegue(withIdentifier: "moveToDetailSegue", sender: self)
    }
}

