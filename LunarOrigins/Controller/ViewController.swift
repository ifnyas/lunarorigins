//
//  ViewController.swift
//  LunarOrigins
//
//  Created by Wgn on 18/04/20.
//  Copyright © 2020 Ifnyas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lunarTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // set navigation bar
        self.navigationItem.title = "Lunars Origins: Roman"
        navigationController?.navigationBar.barTintColor = .init(red: 245/255, green: 240/255, blue: 233/255, alpha: 1.0)
        
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.init(red: 128/255, green: 102/255, blue: 76/255, alpha: 1.0)]
        
        // Menghubungkan lunarTableView dengan ke dua metode di bawah
        lunarTableView.dataSource = self
        
        // Menambahkan delegate ke table view
        lunarTableView.delegate = self
            
        // Menghubungkan berkas XIB untuk lunarTableViewCell dengn lunarTableView.
        lunarTableView.register(UINib(nibName: "LunarTableViewCell", bundle: nil), forCellReuseIdentifier: "LunarCell")
    }
}

extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Digunakan untuk menambahkan total item yang akan muncul di dalam Table View
        return lunars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Digunakan untuh menghubungkan cell dengan identifier "LunarCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "LunarCell", for: indexPath) as! LunarTableViewCell
            
        // Menetapkan nilai lunar ke view di dalam cell
        let lunar = lunars[indexPath.row]
        cell.titleLunar.text = lunar.title
        cell.descLunar.text = lunar.desc
        cell.imgLunar.image = lunar.img
            
        // Kode ini digunakan untuk membuat imageView memiliki frame bound/lingkaran
        cell.imgLunar.layer.cornerRadius = cell.imgLunar.frame.height / 2
        cell.imgLunar.clipsToBounds = true
        return cell
    }
}

extension ViewController: UITableViewDelegate{
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Memanggil View Controller dengan berkas NIB/XIB di dalamnya
        let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)
        
        // Mengirim data lunar
        detail.lunar = lunars[indexPath.row]
        
        // Push/mendorong view controller lain
        self.navigationController?.pushViewController(detail, animated: true)
    }
}

