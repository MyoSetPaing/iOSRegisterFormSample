//
//  ProfileViewController.swift
//  iOSRegisterForm
//
//  Created by Myo Set Paing on 8/21/19.
//  Copyright © 2019 Myo Set Paing. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    @IBOutlet weak var lblDOB: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    
    static let identifier = "ProfileViewController"
    var name : String = ""
    var age : String = ""
    var selectGenderIndex : Int = -1
    var email: String = ""
    var phone: String = ""
    var dob : String = ""
    var address : String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()

        lblName.text = name
        lblAge.text = age
        switch selectGenderIndex {
        case 0:
            lblGender.text = "Male"
            break
        case 1:
            lblGender.text = "Female"
            break
        case 2:
            lblGender.text = "Other"
            break
        default:
            break
        }
        
        lblDOB.text = dob
        lblEmail.text = email
        lblAddress.text = address
        lblPhone.text = phone
    }
    

  
}
