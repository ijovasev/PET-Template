//
//  ProgessArray.swift
//  PET
//
//  Created by liuyal on 10/27/17.
//  Copyright © 2017 TEAMX. All rights reserved.
//

import Foundation

let TIER_SIZE = 2
let Q_PER_TIER = 10
let ARRAY_SIZE = TIER_SIZE * Q_PER_TIER

public class ProgressArray{
    
    public var userID: String // for linking to user to store progress
    public var ArraySize: Int
    public var percComp = [Double]()
    var questionArray = [QuestionClass]()
    
    public init() {
        userID = ""
        ArraySize = 0;
        percComp = Array(repeating: 0.00, count: TIER_SIZE)
        
        for i in 0..<TIER_SIZE{
            for j in 0..<Q_PER_TIER{
                questionArray.append(QuestionClass(levelID: i, questionID: j, emotion: .happy, errCnt: 0, questionState: .initial, imageFileRef: ""))
                self.ArraySize += 1
            }
        }
    }
    
    //Passing value to create PROGRESSARRAY
    init(useriD: String, emotionIn:[emotionID],StateIn: [state]) {
        userID = useriD
        ArraySize = 0
        percComp = Array(repeating: 0.00, count: TIER_SIZE)
        
        for i in 0..<TIER_SIZE{
            for j in 0..<Q_PER_TIER{
                // Update emotion ID base on ID ARRAYbase
                questionArray.append(QuestionClass(levelID: i, questionID: j, emotion: emotionIn[ArraySize], errCnt: 0, questionState: StateIn[ArraySize], imageFileRef: ""))
                self.ArraySize += 1
            }
        }
    }
    
    public func update_total_CompRate(){
        for ii in 0..<TIER_SIZE{
            update_tier_CompRate(tierID: ii)
        }
    }
    
    public func update_tier_CompRate(tierID: Int){
        var counter = 0
        
        for jj in (tierID*10)..<(Q_PER_TIER * (tierID + 1)){
            if self.questionArray[jj].questionState != .correct{   }
            else{counter += 1}
        }
        self.percComp[tierID] = Double(counter)/Double(Q_PER_TIER)
    }
    
    public func printArray(){
        for i in 0..<self.ArraySize{
            print(self.questionArray[i].levelID,self.questionArray[i].questionID)
            print("Level ID: ", self.questionArray[i].levelID)
            print("Question ID: ", self.questionArray[i].questionID)
            print("emotion ID: ", self.questionArray[i].emotion)
            print("errCnt: ", self.questionArray[i].errCnt)
            print("questionState: ", self.questionArray[i].questionState)
            print("imageFileRef: ", self.questionArray[i].imageFileRef, "\n")
        }
    }
    
}

