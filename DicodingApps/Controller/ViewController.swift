//
//  ViewController.swift
//  DicodingApps
//
//  Created by Muhammad Najmul Faiz on 19/04/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func editProfile(_ sender: Any) {
        let alert = UIAlertController(title: "Apakah anda berniat untuk mengubah profil?", message: "Anda dapat memperbarui profil Anda sekarang juga.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ya", style: .default, handler: { action in
            print("Mengganti Profile.")
        }))
        
        alert.addAction(UIAlertAction(title: "Tidak", style: .default, handler: { action in
            print("Membatalkan Ubah Profile.")
        }))
        
        self.present(alert, animated: true)
    }
}

