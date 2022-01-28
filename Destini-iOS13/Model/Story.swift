//
//  Sotry.swift
//  Destini-iOS13

import Foundation

struct Story {
    let title: String
    let choice1: String
    let choice2: String
    let choice1Destination: Int
    let choice2Destination: Int
    
    init(t: String, ch1: String, ch2: String, ch1Dest: Int, ch2Dest: Int) {
        title = t
        choice1 = ch1
        choice2 = ch2
        choice1Destination = ch1Dest
        choice2Destination = ch2Dest
        
    }
    
}
