
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
    public var currentTime : Double = 0;
    public var beatLength : Double = 1;
    
    override init()
    {
        super.init()
    }
    
    func didLoadFromCCB()
    {
        
    }
    
    override func update(delta : CCTime)
    {
        self.currentTime += delta;
        
    }
    
    
    
}