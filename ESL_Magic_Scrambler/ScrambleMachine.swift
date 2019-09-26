//
//  ScrambleMachine.swift
//  ESL_Magic_Scrambler
//
//  Created by Kevin Smith on 9/26/19.
//  Copyright © 2019 Kevin Smith. All rights reserved.
//

import Foundation

class ScrambleMachine {
    func scrambleWordString(theStringSays: String) -> String {
        let stringTurnedIntoArray = splitString(theString: theStringSays)
        var newArray : [String] = []
        for n in stringTurnedIntoArray {
            newArray.append(shuffleTheWord(aString: n))
        }
        
        return reBuildNewString(withScrambledWords: newArray)
    }



    //Splits a string into an array
    // "Hello World" will return ["Hello","World"]
    func splitString(theString : String) -> [String] {
        return theString.components(separatedBy: " ")
    }

    //Shuffles a single string's characters
    // "Hello" returns "ellHo"
    func shuffleTheWord(aString: String) -> String {
        
        let wordArray = Array(aString).shuffled()
        
        let newWord = String(wordArray)
        return newWord
    }

    func reBuildNewString(withScrambledWords: [String]) -> String {
        var newString = ""
        
        for n in withScrambledWords {
            newString += n + " "
        }
        return newString
    }

    
}
