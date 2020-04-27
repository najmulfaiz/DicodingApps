//
//  AcademiesViewController.swift
//  DicodingApps
//
//  Created by Muhammad Najmul Faiz on 22/04/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class AcademiesViewController: UIViewController {

    @IBOutlet weak var androidAcademy: UIStackView!
    @IBOutlet weak var unityAcademy: UIStackView!
    @IBOutlet weak var cloudAcademy: UIStackView!
    @IBOutlet weak var arvrAcademy: UIStackView!
    var academies = [
        ("Android Developer", "Lorem ipsum dolor sit amet", UIImage(named: "android")),
        ("Unity Game Developer", "Lorem ipsum dolor sit amet", UIImage(named: "unity")),
        ("AR / VR Developer", "Lorem ipsum dolor sit amet", UIImage(named: "arvr")),
        ("Cloud Developer", "Lorem ipsum dolor sit amet", UIImage(named: "cloud")),
        ("Lorem ipsum dolor sit amet", "Lorem ipsum dolor sit amet", UIImage(named: "android"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addTapped(parameter: &androidAcademy)
        addTapped(parameter: &unityAcademy)
        addTapped(parameter: &cloudAcademy)
        addTapped(parameter: &arvrAcademy)
    }
    
    func addTapped(parameter: inout UIStackView) {
        parameter.isUserInteractionEnabled = true
        parameter.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.objectTapped)))
    }
    
    @objc func objectTapped(gesture: UITapGestureRecognizer) {
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewControllerScene") as! DetailViewController
        
        switch gesture.view as? UIStackView {
        case androidAcademy:
            controller.detail = academies[0]
        case unityAcademy:
            controller.detail = academies[1]
        case cloudAcademy:
            controller.detail = academies[2]
        case arvrAcademy:
            controller.detail = academies[3]
        default:
            controller.detail = academies[4]
        }
        
        self.present(controller, animated: true, completion: nil)
    }
}
