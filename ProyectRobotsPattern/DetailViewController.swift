//
//  DetailViewController.swift
//  ProyectRobotsPattern
//
//  Created by Soporte Ceiba on 10/18/18.
//  Copyright © 2018 Miguel Angel Arenas Correa. All rights reserved.
//

import UIKit


class DetailViewController: UIViewController {
    
    @IBOutlet weak var titleLB: UILabel!
    @IBOutlet weak var finishDemoBTN: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func finishDemo(_ sender: UIButton) {
        generateAlert(title: "Thanks", message: "Thanks for comming to Medellin iOS, see you soon.")
    }
    
    func generateAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert,animated: true)
    }
}
