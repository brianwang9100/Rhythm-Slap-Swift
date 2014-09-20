//
//  Slap.swift
//  RhythmSlap
//
//  Created by Brian Wang on 9/19/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

import Foundation

class SingleSlap : SlapGesture
{
    
    func didLoadFromCCB()
    {
        self.numOfBeats = 2;
        self.slapSequence = [(slapDirections.singleSlap, 2)]
    }
    
}