
//
//  DoubleSlap.swift
//  RhythmSlap
//
//  Created by Brian Wang on 9/20/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

import Foundation

class DoubleSlap : SlapGesture
{
    
    func didLoadFromCCB()
    {
        self.numOfBeats = 2
        self.slapSequence = [(slapDirections.leftSlap, 1.5), (slapDirections.rightSlap, 2)]
    }

}