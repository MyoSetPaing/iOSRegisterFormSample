//
//  HelloViewController.swift
//  iOSRegisterForm
//
//  Created by Myo Set Paing on 8/22/19.
//  Copyright © 2019 Myo Set Paing. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {
    
    static let identifier = "HelloViewController"

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func btnNext(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Hello", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: GreenViewController.identifier) as! UINavigationController
        
        self.present(vc, animated: true, completion: nil)
        
    }
    

}
