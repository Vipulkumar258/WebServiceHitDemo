//
//  ImagesModel.swift
//  ServiceHitDemo
//
//  Created by Appinventiv on 09/03/17.
//  Copyright © 2017 Appinventiv. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import AlamofireImage

struct ImagesModel {
    
    let id : String!
    var comments = 0
    var downloads = 0
    var favorites = 0
    var likes = 0
    var views = 0
    var pageURL : String = ""
    var userImageURL : String = ""
    var previewWidth: Int = 0
    var imageWidth: Int = 0
    var webformatURL: String = ""
    var previewURL: String = ""
    var imageData : JSON?  = []
    
    init(withJSON json: JSON) {
        
        self.id = json["id"].stringValue
        self.comments = json["comments"].intValue
        self.downloads = json["downloads"].intValue
        self.favorites = json["favorites"].intValue
        self.likes = json["likes"].intValue
        self.views = json["views"].intValue
        self.pageURL = json["pageURL"].stringValue
        self.userImageURL = json["userImageURL"].stringValue
        self.webformatURL = json["webformatURL"].stringValue
        self.previewURL = json["previewURL"].stringValue
        
    }
    
}




//{
//    "imageHeight" : 2250,
//    "user" : "lipetkd",
//    "previewWidth" : 150,
//    "imageWidth" : 4000,
//    "likes" : 198,
//    "previewHeight" : 84,
//    "webformatHeight" : 360,
//    "tags" : "car, sports car, wedding car",
//    "type" : "illustration",
//    "downloads" : 13755,
//    "webformatURL" : "https:\/\/pixabay.com\/get\/ed3cb30820e90825d0471401e14b4694e27fffd41db9184193f3c479a0_640.jpg",
//    "views" : 185921,
//    "id" : 49278,
//    "favorites" : 88,
//    "webformatWidth" : 640,
//    "pageURL" : "https:\/\/pixabay.com\/en\/car-sports-car-wedding-car-49278\/",
//    "previewURL" : "https:\/\/cdn.pixabay.com\/photo\/2012\/05\/29\/00\/43\/car-49278_150.jpg",
//    "comments" : 41,
//    "user_id" : 4592,
//    "userImageURL" : "https:\/\/cdn.pixabay.com\/user\/2012\/05\/29\/00-42-25-95_250x250.png"
//}
