//
//  TestingConstants.swift
//  TemplateTests
//
//  Created by Ivana Jovasevic on 2017-11-03.
//  Copyright © 2017 J.L. All rights reserved.
//

import Foundation
let TIER_SIZE = 2
let Q_PER_TIER = 10
let ARRAY_SIZE = TIER_SIZE * Q_PER_TIER

enum emotionID{
    case happy
    case sad
    case angry
    case scared
}

enum state{
    case initial // 0
    case correct // 1
    case incorrect // 2
    case skipped // 3
}

struct TestingConstants{
    
    static let EmotionNameArray: [String] = ["happy", "sad", "angry", "scared","happy", "sad", "angry", "scared","happy", "sad", "angry","scared", "happy", "sad", "angry","scared", "happy", "sad", "angry", "scared"]
    
    static let emoIDArray: [emotionID] = [.happy, .sad, .angry, .scared,.happy, .sad, .angry, .scared, .happy, .sad, .angry, .scared,.happy, .sad, .angry, .scared,.happy, .sad, .angry, .scared]
    
    
}
