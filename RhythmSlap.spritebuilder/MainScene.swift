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
    weak var hand : Hand?
    weak var face : Face?
    weak var timer: Timer?
    weak var comboBar: ComboBar?
    
    //numberOfSlaps
    var currentNumOfSlaps : Int = 5
    var waveNumOfSlaps : Int = 5
    
    //wave inits
    var currentWave : Int = 0
    
    //game related Bools
    var gameStarted : Bool = false
    var gameEnded : Bool = false
    
    //game related values
    var comboBarSize : Int = 0
    
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