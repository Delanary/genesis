//
//  People.swift
//  genesis
//
//  Created by Dmitry Rybochkin on 10.09.17.
//  Copyright © 2017 Dmitry Rybochkin. All rights reserved.
//

import Foundation
func randomBool() -> Bool{
    let a = Int(arc4random_uniform(2))==1
    return a
}
class People: NSObject {
    var firstName : String?
    var maleIs : Bool = false
    var ownGens : Gens?
}
func Multiplicate(male : Male, female : Female) -> Array<Bool> {
    var count,i : Int!
    i = 0

    count = 0
    let  c = Int(arc4random_uniform(100))-1
    if (c < 60){
        count = 1
    }
    if ((c < 91) && (c > 59)) {
        count = 2
    }
    if ((c < 98) && (c > 90)) {
        count = 3
    }
    if (c > 97) {
        count = 4
    }

    var result : Array<Bool> = []
    while (i < count) {
        result[i] = randomBool()
        i = i + 1
    }
        return result
}

