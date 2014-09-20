
//
//  Timer.swift
//  RhythmSlap
//
//  Created by Brian Wang on 9/19/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

import Foundation

class Timer : CCNode
{
    var currentTime = 0.0;
    var beatLength = 1.0;
    
    func didLoadFromCCB()
    {
        
    }
    
    override func update(delta : CCTime)
    {
        self.currentTime += delta;
        
    }
    
    
    
}