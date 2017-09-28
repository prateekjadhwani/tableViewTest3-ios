//
//  ThingsToDo.swift
//  TableViewTest3
//
//  Created by Jadhwani, Prateek (TMP) on 9/28/17.
//  Copyright © 2017 Jadhwani, Prateek (TMP). All rights reserved.
//

import Foundation

class ThingsToDo {
    var task: String
    var isDone: Bool
    
    init(thing: String, done: Bool) {
        task = thing
        isDone = done
    }
}
