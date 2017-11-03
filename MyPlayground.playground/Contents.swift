//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport
import SpriteKit

///////////////////////////// INIT /////////////////////////////
let temp_user = User_Model()
let temparray = ProgressArray()
let current_user = User_Model(ID: "1", name: "Jerry", age: 21, gender: true, email: "liuyal@sfu.ca", password: "password8426", progress: temparray)
let emoIDArray: [emotionID] = [.happy, .sad, .angry, .scared,.happy, .sad, .angry, .scared, .happy, .sad, .angry, .scared,.happy, .sad, .angry, .scared,.happy, .sad, .angry, .scared]
let stateIDarray: [state] = [.initial, .correct, .incorrect, .skipped,.initial, .correct, .incorrect, .skipped,.initial, .correct, .incorrect, .skipped,.initial, .correct, .incorrect, .skipped,.initial, .correct, .incorrect, .skipped]

///////////////////////////// CHANGE MEMBER /////////////////////////////
temp_user.print_user()
current_user.print_user()
current_user.ID = "99"
current_user.name = "Alex"
current_user.age = 55
current_user.gender = false
current_user.email =  "AAA@sfu.ca"
current_user.password = "123456"
current_user.print_user()

let current_user2 = User_Model(ID: "1", name: "Jerry", age: 21, gender: true, email: "liuyal@sfu.ca", password: "password8426",progress: temparray)

///////////////////////////// INIT WITH PARA TEST /////////////////////////////
let size = emoIDArray.count; let size2 = stateIDarray.count
print("EmotionSize: ", size, "StateSize: ",size2)
let newprohArray = ProgressArray(useriD: "22", emotionIn: emoIDArray,StateIn: stateIDarray)
print("NEW ARRAY Size:",newprohArray.ArraySize); print("\r")
for i in 0..<20{print("Emotion: ", newprohArray.questionArray[i].emotion,"  \t", "State: ", newprohArray.questionArray[i].questionState)}

///////////////////////////// PROGRESS TEST /////////////////////////////
current_user2.progress.printArray()
current_user2.print_user()
current_user2.progress.update_tier_CompRate(tierID: 0)
current_user2.progress.update_tier_CompRate(tierID: 1)
print("Tier1%:",current_user2.progress.percComp[0],"Tier2%:",current_user2.progress.percComp[1])
current_user2.progress.questionArray[2].questionState = .correct
current_user2.progress.questionArray[1].questionState = .correct
current_user2.progress.questionArray[0].questionState = .correct
current_user2.progress.questionArray[18].questionState = .correct
current_user2.progress.questionArray[19].questionState = .correct
current_user2.progress.update_tier_CompRate(tierID: 0) // TIER 1 UPDATE ONLY
print("Tier1%:",current_user2.progress.percComp[0],"Tier2%:",current_user2.progress.percComp[1])
current_user2.progress.questionArray[5].questionState = .correct
current_user2.progress.questionArray[12].questionState = .correct
current_user2.progress.questionArray[13].questionState = .correct
current_user2.progress.questionArray[14].questionState = .correct
current_user2.progress.questionArray[15].questionState = .correct
current_user2.progress.questionArray[16].questionState = .correct
current_user2.progress.update_total_CompRate()
current_user2.progress.update_tier_CompRate(tierID: 0)
//for i in 0..<20{print("State: ", current_user2.progress.questionArray[i].questionState)}
print("Tier1%:",current_user2.progress.percComp[0],"Tier2%:",current_user2.progress.percComp[1])
print(current_user2.progress.percComp)
print("\r")









