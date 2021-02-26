//
//  RestaurantLister.swift
//  SwinjectExample
//
//  Created by Rusell on 26.02.2021.
//  Copyright © 2019 Anurag Ajwani. All rights reserved.

import UIKit

protocol RestaurantLister {
    func get(onCompletion: @escaping ([Restaurant]) -> ())
}

class ServerRestaurantLister: RestaurantLister {
    
    func get(onCompletion: @escaping ([Restaurant]) -> ()) {
        
        let decoder = JSONDecoder()
        
        guard let file = Bundle.main.url(forResource: "restaurants", withExtension: "json"),
            let data = try? Data(contentsOf: file),
            let restaurants = try? decoder.decode([Restaurant].self, from: data) else {
                onCompletion([])
                return
        }
        
        let randomDelay = Double.random(in: 0..<5)
        Timer.scheduledTimer(
            withTimeInterval: randomDelay,
            repeats: false,
            block: { _ in onCompletion(restaurants) })
    }
}
