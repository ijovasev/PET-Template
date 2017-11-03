
import UIKit
import PlaygroundSupport

public enum emotionID{
    case happy
    case sad
    case angry
    case scared
}

public enum state{
    case initial
    case correct
    case incorrect
    case skipped
}

public class QuestionClass {
    
    public init(){
        self.questionID = 0; self.levelID = 0; self.emotion = .happy;
        self.errCnt = 0; self.questionState = .initial; self.imageFileRef = "";
    }
    
    public init(levelID: Int, questionID: Int, emotion: emotionID, errCnt: Int, questionState: state, imageFileRef: String){
        self.questionID = questionID; self.levelID = levelID; self.emotion = emotion;
        self.errCnt = errCnt; self.questionState = questionState; self.imageFileRef = imageFileRef;
    }
    

   public var levelID: Int
   public var questionID: Int
   public var emotion: emotionID
    
   public var errCnt: Int
   public var questionState: state
   public var imageFileRef: String
}
