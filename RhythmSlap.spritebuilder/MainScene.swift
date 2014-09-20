//
//  MainScene.swift
//  RhythmSlap
//
//  Created by Brian Wang on 9/19/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

import Foundation

class MainScene : CCScene
{
    //basic inits
    public weak let hand : Hand
    public weak let face : Face
    public weak let timer: Timer
    public weak let comboBar: ComboBar
    
    //numberOfSlaps
    public var currentNumOfSlaps : Int = 5
    public var waveNumOfSlaps : Int = 5
    
    //wave inits
    public var currentWave : Int = 0
    
    //game related Bools
    public var gameStarted : Bool = false
    public var gameEnded : Bool = false
    
    //game related values
    
    
    
    override func didLoadFromCCB()
    {
        
    }
    
    override func update(CCTime: delta)
    {
        
    }
    
    func startGame()
    {
        
    }
    
    func endGame()
    {
        
    }
    
}