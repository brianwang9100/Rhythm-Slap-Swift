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
    weak var colorGradientNode: CCNodeGradient?
    weak var glowNode: CCNodeColor?
    weak var gestureMessage: CCLabelTTF?
    
    //numberOfSlaps
    var currentNumOfSlaps : Int = 5
    var waveNumOfSlaps : Int = 5
    
    //wave inits
    var currentWave : Int = 0
    
    //game related Bools
    var gameCountdownMode : Bool = true;
    var gameCountdown: int = 4;
    var gameStarted : Bool = false
    
    var gameEnded : Bool = false
    
    //game related values
    var comboBarSize : Int = 0
    
    func didLoadFromCCB()
    {
        self.gestureMessage.string = ""
    }
    
    override func update(delta : CCTime)
    {
        if (!gameStarted)
        {
            if (gameCountdownMode)
            {
                if (timer.currentTime%1 == 0)
                {
                    if (gameCountdown == 0)
                    {
                        self.gestureMessage.string = "START!"
                        self.gameCountdownMode = false
                        self.gameStarted = true
                        
                    }
                    else if (gameCountdown < 4)
                    {
                        self.gestureMessage.string = "\(gameCountdown)"
                    }
                    self.timer.currentTime = 0
                    self.gameCountdown--
                }
            }
            else
            {
                
            }
        }
    }
    
    func setPoints(points: int)
    {
        
    }
    
    func startGame()
    {
        
    }
    
    func endGame()
    {
        
    }
    
}