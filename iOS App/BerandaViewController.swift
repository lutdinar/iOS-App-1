//
//  BerandaViewController.swift
//  iOS App
//
//  Created by Lut Dinar Fadila on 29/01/20.
//  Copyright © 2020 Lut Dinar Fadila. All rights reserved.
//

import UIKit

class BerandaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logoutButton(_ sender: UIButton) {
        print("Logout berhasil")
        let main = UIStoryboard(name: "Main", bundle: nil)
        let loginView = main.instantiateViewController(withIdentifier: "LoginView") as! ViewController
        
        loginView.modalPresentationStyle = .fullScreen
        present(loginView, animated: true, completion: nil)
    }
    

}
