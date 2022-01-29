//
//  ViewController.swift
//  Table
//
//  Created by Seo on 2022/01/29.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        table.dataSource = self
        table.delegate = self 
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "myCell")
        //cell.textLabel?.text = "\(indexPath.row)"
        //cell.detailTextLabel?.text = indexPath.description
        //cell.imageView?.image = UIImage(named: "smile.png")!
        //return cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as!
            MyTableViewCell
        cell.myLable.text = indexPath.description
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
}

