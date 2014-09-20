//
//  Hand.swift
//  RhythmSlap
//
//  Created by Brian Wang on 9/19/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

import Foundation

class Hand : CCNode
{
    enum HandState
    {
        case LeftSlap
        case RightSlap
        case UpSlap
        case DownSlap
    }
    
    public var isSlapping : Bool = false
    
    override init()
    {
        super.init()
    }
    
    func didLoadFromCCB()
    {
        
    }
    
    override func update(delta : CCTime)
    {
        
    }
    
    func slapLeft()
    {
        
    }
    
    func slapRight()
    {
        
    }

    func slapDown()
    {

    }
    
    func slapUp()
    {
        
    }
    
    func reset()
    {
        
    }
    

}