//
//  TableViewController.swift
//  Project10
//
//  Created by Kei on 2020/09/12.
//  Copyright © 2020 Kei. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let prefecture = ["北海道","青森県","岩手県","宮城県","秋田県","山形県",
    "福島県","茨城県","栃木県","群馬県","埼玉県","千葉県","東京都","神奈川",
    "新潟県","富山県","石川県","福井県","山梨県","長野県","岐阜県","静岡県",
    "愛知県","三重県","滋賀県","京都府","大阪府","兵庫県","奈良県","和歌山県",
    "鳥取県","島根県","岡山県","広島県","山口県","徳島県","香川県","愛媛県",
    "高知県","福岡県","佐賀県","長崎県","熊本県","大分県","宮崎県","鹿児島県",
    "沖縄県"]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 47
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "\(prefecture[indexPath.row])"
        cell.detailTextLabel?.text = "\(indexPath.row + 1)番目の都道府県です"
        
        
        if indexPath.row % 3 == 0 {
            cell.backgroundColor = UIColor.red
        }else if indexPath.row % 3 == 1 {
            cell.backgroundColor = UIColor.green
        }else{
            cell.backgroundColor = UIColor.blue
        }
    
        return cell
    }

   

}

