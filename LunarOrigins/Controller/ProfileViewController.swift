//
//  ProfileViewController.swift
//  LunarOrigins
//
//  Created by Wgn on 19/04/20.
//  Copyright © 2020 Ifnyas. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var bgProfile: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set navigation bar
        self.navigationItem.title = "Quis Sum Ego?"
        navigationController?.navigationBar.barTintColor = .init(red: 245/255, green: 240/255, blue: 233/255, alpha: 1.0)
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.init(red: 128/255, green: 102/255, blue: 76/255, alpha: 1.0)]
        
        // Kode ini digunakan untuk membuat imageView memiliki frame bound/lingkaran
        imgProfile.layer.cornerRadius = imgProfile.frame.height / 2
        imgProfile.clipsToBounds = true
    }
    
    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
