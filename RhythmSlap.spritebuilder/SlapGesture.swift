//
//  SlapGesture.swift
//  RhythmSlap
//
//  Created by Brian Wang on 9/19/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

import Foundation

class SlapGesture : CCNode
{
    public enum slapDirections
    {
        case singleSlap
        
        case leftSlap
        case rightSlap
        case upSlap
        case downSlap
    }

    var numOfBeats : Int = 0    
    var slapSequence :[(slapDirections, Double)]?
}