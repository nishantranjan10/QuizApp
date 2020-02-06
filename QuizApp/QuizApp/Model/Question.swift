//
//  Question.swift
//  QuizApp
//
//  Created by Ranjan, Nishant [GCB-OT NE] on 18/1/20.
//  Copyright © 2020 Ranjan, Nishant [GCB-OT NE]. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}


