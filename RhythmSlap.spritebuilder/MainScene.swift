//
//  MainScene.swift
//  RhythmSlap
//
//  Created by Brian Wang on 9/19/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

import Foundation

class MainScene : CCNode
{
    //basic inits
    public weak var hand : Hand?
    public weak var face : Face?
    public weak var timer: Timer?
    public weak var comboBar: ComboBar?
    
    //numberOfSlaps
    public var currentNumOfSlaps : Int = 5
    public var waveNumOfSlaps : Int = 5
    
    //wave inits
    public var currentWave : Int = 0
    
    //game related Bools
    public var gameStarted : Bool = false
    public var gameEnded : Bool = false
    
    //game related values
    
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
    
    func startGame()
    {
        
    }
    
    func endGame()
    {
        
    }
    
}