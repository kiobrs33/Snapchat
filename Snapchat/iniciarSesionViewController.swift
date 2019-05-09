//
//  ViewController.swift
//  Snapchat
//
//  Created by MAC18 on 9/05/19.
//  Copyright © 2019 MAC18. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class iniciarSesionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!, completion: {(user, error) in print("Intentando Iniciar Sesion")
            if error != nil{
                print("Se presento el siguiente error : \(error)")
            }else{
                print("Inicio de Sesion Exitoso")
            }
        })
    }
    
}

