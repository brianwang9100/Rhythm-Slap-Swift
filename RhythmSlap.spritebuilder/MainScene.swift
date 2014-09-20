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
    var hand : Hand? = nil
    var face : Face? = nil
    var timer: Timer? = nil
    var comboBar: ComboBar? = nil
    var colorGradientNode: CCNodeGradient? = nil
    var glowNode: CCNodeColor? = nil
    var gestureMessage: CCLabelTTF? = nil
    
    
    //numberOfSlaps
    var currentNumOfSlaps : Int = 5
    var waveNumOfSlaps : Int = 5
    
    //wave inits
    var currentWave : Int = 0
    
    //game related Bools
    var gameCountdownMode : Bool = true;
    var gameCountdown: Int = 4;
    var gameStarted: Bool = false
    var tutorialMode: Bool = false
    
    var gameEnded : Bool = false
    
    //game related values
    var comboBarSize : Int = 0
    var queue : [SlapGesture]? = nil
    var currentGesture: SlapGesture? = nil
    
    //initialization of 8beatGestureQueues
    var fourSlap: [SlapGesture] = [SingleSlap(), SingleSlap(), SingleSlap(), SingleSlap()]
    var threeSlapOneDouble: [SlapGesture] = [SingleSlap(), SingleSlap(), SingleSlap(), DoubleSlap()]
    var twoDoubletwoSlap: [SlapGesture] = [DoubleSlap(), DoubleSlap(), SingleSlap(), SingleSlap()]
    var twoSlapOneDown: [SlapGesture] = [SingleSlap(), SingleSlap(), SlapDown()]
    
    func didLoadFromCCB()
    {
        self.gestureMessage!.string = ""
    }
    
    override func update(delta : CCTime)
    {
        if !self.gameStarted
        {
            if self.gameCountdownMode
            {
                if self.timer!.currentTime % 1 == 0
                {
                    if gameCountdown == 0
                    {
                        self.gestureMessage!.string = "START!"
                        self.gameCountdownMode = false
                        self.gameStarted = true
                        
                    }
                    else if gameCountdown < 4
                    {
                        self.gestureMessage!.string = "\(gameCountdown)"
                    }
                    self.timer!.currentTime = 0
                    self.gameCountdown--
                }
            }
            else
            {
                
            }
        }
    }
    
    func setPoints(points: Int)
    {
        
    }
    
    func startGame()
    {
        
    }
    
    func endGame()
    {
        
    }
    
    func loadGesture()
    {
        
    }
    
    func generateGestures()
    {
        if !tutorialMode
        {
            queue = [SingleSlap(), SingleSlap(), SingleSlap(), SingleSlap(),
                        SingleSlap(), SingleSlap(), SingleSlap(), DoubleSlap()]
        }
    }
    
}