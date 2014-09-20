
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

    func didLoadFromCCB()
    {
        self.numOfBeats = 4
        self.slapSequence = [(slapDirections.leftSlap, 1), (slapDirections.rightSlap, 2), (slapDirections.upSlap, 3)]
    }
}