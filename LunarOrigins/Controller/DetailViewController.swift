//
//  DetailViewController.swift
//  LunarOrigins
//
//  Created by Wgn on 19/04/20.
//  Copyright © 2020 Ifnyas. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imgLunar: UIImageView!
    @IBOutlet weak var titleLunar: UILabel!
    @IBOutlet weak var descLunar: UILabel!
    
    // Digunakan untuk menampung data Hero
    var lunar: Lunar?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Digunakan untuk menetapkan nilai hero ke beberapa view yang ada
        if let result = lunar {
            imgLunar.image = result.img
            titleLunar.text = result.title
            descLunar.text = result.desc
        }
    }
    
    override func viewWillLayoutSubviews() {
        descLunar.sizeToFit()
    }
}
