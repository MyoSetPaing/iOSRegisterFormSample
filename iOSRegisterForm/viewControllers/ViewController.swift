//
//  ViewController.swift
//  iOSRegisterForm
//
//  Created by Myo Set Paing on 8/21/19.
//  Copyright © 2019 Myo Set Paing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    
    @IBOutlet weak var tfAge: UITextField!
    
    @IBOutlet weak var tfEmail: UITextField!
    var selectedGender: Int = -1
    
    @IBOutlet weak var tfPhone: UITextField!
    @IBOutlet weak var tfDOB: UITextField!
    @IBOutlet weak var tfAddress: UITextField!
    
    @IBAction func scGender(_ sender: UISegmentedControl) {
        selectedGender = sender.selectedSegmentIndex
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnRegister(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: ProfileViewController.identifier) as! ProfileViewController
        vc.name = tfName.text ?? ""
        vc.age = tfAge.text ?? ""
        vc.selectGenderIndex = selectedGender
        vc.phone = tfPhone.text ?? ""
        vc.dob = tfDOB.text ?? ""
        vc.email = tfEmail.text ?? ""
        vc.address = tfAddress.text ?? ""
        
        self.present( vc, animated: true, completion: nil)
    }
    
}

