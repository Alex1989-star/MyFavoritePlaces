//
//  PlaceModel.swift
//  MyFavoritePlaces
//
//  Created by Леся on 20.08.2021.
//

import RealmSwift

class Place: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
    var restaurantName: String?
    
    convenience init(name: String, location: String?, type: String?, imageData: Data?) {
        self.init()
        self.name = name
        self.location = location
        self.type = type
        self.imageData = imageData
    }
}

