//
//  WebServicesData.swift
//  ServiceHitDemo
//
//  Created by Appinventiv on 09/03/17.
//  Copyright © 2017 Appinventiv. All rights reserved.
//

import Foundation
import SwiftyJSON

class WebServicesData {
    
    func fetchDataFromPixabay(success : @escaping (([ImagesModel]) -> Void),
                              failure : @escaping ((Error) -> Void)) {
        
        let url =  "https://pixabay.com/api/"
        let param = ["key" : "4770218-3165926874c8f0fad4783188d", "q" : "Car"]
        
        
        NetWorkController().GET(URL: url,
                                parameters : param,
                                success : { (json : JSON) in
                                    
                                    print(json)
                                    
                                    let imagesArray = json["hits"].arrayValue
                                    
                                    var imageModels = [ImagesModel]()
                                    
                                    for image in imagesArray {
                                        
                                        imageModels.append(ImagesModel(withJSON: image))
                                    }
                                    
                                    success(imageModels)
                                    
        }, failure : { (error : Error) in
            
            failure(error)
        })
        
}
}
