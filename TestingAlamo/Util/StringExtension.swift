//
//  StringExtension.swift
//  TestingAlamo
//
//  Created by Roberta Jorgo on 20.12.20.
//

import Foundation

extension String {
    
    var twoFirstSentences: String {
        
        let array: [String.SubSequence] = self.split(separator: ".")
        if (array.count > 2) {
            let returnArray = array[0...1]
            return "\(returnArray.joined(separator: "."))."
        }
        return "\(array.joined(separator: "."))."
    }
    
}
