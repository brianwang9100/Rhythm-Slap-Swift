//
//  SlapDown.swift
//  RhythmSlap
//
//  Created by Brian Wang on 9/20/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

import Foundation

class SlapDown : SlapGesture
{
    func didLoadFromCCB()
    {
        self.numOfBeats = 4
        self.slapSequence = [(slapDirections.singleSlap, 3)]
    }

}