//
//  ViewController.swift
//  iOS App
//
//  Created by Lut Dinar Fadila on 29/01/20.
//  Copyright © 2020 Lut Dinar Fadila. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        
        if  usernameText.text == "" {
            alertMessage(title: "Kesalahan", message: "Username harus diisi!")
        } else if passwordText.text == "" {
            alertMessage(title: "Kesalahan", message: "Password harus diisi")
        } else {
            if usernameText.text == "admin" && passwordText.text == "admin" {
                print("Login berhasil")
                let main = UIStoryboard(name: "Main", bundle: nil)
                let berandaView = main.instantiateViewController(withIdentifier: "BerandaView") as! BerandaViewController
                
                berandaView.modalPresentationStyle = .fullScreen
                present(berandaView, animated: true, completion: nil)
                
            } else {
                print("Login gagal")
                alertMessage(title: "Kesalahan", message: "Username / Password salah!")
            }
        }
        
        
        
        
    }
    
    func alertMessage(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    


}

