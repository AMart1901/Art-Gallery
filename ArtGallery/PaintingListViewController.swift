//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Lambda_School_Loaner_64 on 5/1/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource {
    
       let paintingController = PaintingController()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PaintingCell", for: <#T##IndexPath#>)
   
        guard let paintingCell = cell as? PaintingTableViewCell else { return cell }
    
        
        let painting = paintingController.paintings[indexPath.row]
       paintingCell.painting = painting
        
        return cell
    
    
    
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
    }
   


    @IBOutlet weak var tableView: UITableView!
    
    
  
    
    
}
