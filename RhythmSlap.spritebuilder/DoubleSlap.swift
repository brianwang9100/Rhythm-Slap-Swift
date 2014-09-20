
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
    public weak enum slapDirections
    {
        case singleSlap
        
        case leftSlap
        case rightSlap
        case upSlap
        case downSlap
    }
    
    override func didLoadFromCCB()
    {
        self.numOfBeats = 2
        self.slapSequence = [(leftSlap, 1.5), (rightSlap, 2)]
    }

}