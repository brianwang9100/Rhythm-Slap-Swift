
//
//  TripleSlap.swift
//  RhythmSlap
//
//  Created by Brian Wang on 9/20/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

import Foundation

class TripleSlap : SlapGesture
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
        self.numOfBeats = 4
        self.slapSequence = [(leftSlap, 1), (rightSlap, 2), (upSlap, 3)]
    }
}