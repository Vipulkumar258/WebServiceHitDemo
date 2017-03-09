//
//  ViewController.swift
//  ServiceHitDemo
//
//  Created by Appinventiv on 09/03/17.
//  Copyright © 2017 Appinventiv. All rights reserved.
//

import UIKit
import SwiftyJSON
import  Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var carsCollectionVew: UICollectionView!
    var ImagesList = [ImagesModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carsCollectionVew.dataSource = self
        carsCollectionVew.delegate =  self

        WebServicesData().fetchDataFromPixabay(success: { (images : [ImagesModel]) in
            
            self.ImagesList = images
            self.carsCollectionVew.reloadData()
        }) { (error : Error) in  print(error)}
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ImagesList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PrototypeCell_ID", for: indexPath) as! PrototypeCell
        if let url = URL(string: ImagesList[indexPath.item].previewURL) {
            
            // gets  preview Url and sets the image of each cell
            
            cell.imageCell.af_setImage(withURL : url)
            
        }
        
        cell.imageCell.contentMode = .scaleAspectFill
        
        return cell
    }
}

class PrototypeCell : UICollectionViewCell {

    @IBOutlet weak var imageCell: UIImageView!
    
}





