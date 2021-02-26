//
//  Restaurant.swift
//  SwinjectExample
//
//  Created by Rusell on 26.02.2021.
//  Copyright © 2019 Anurag Ajwani. All rights reserved.

struct Restaurant: Decodable {
    let name: String
    let cuisines: [Cuisine]
}
