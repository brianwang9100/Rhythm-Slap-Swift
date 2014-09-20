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
    
    //initialization of 8beatGestureQueues
    var fourSlap : [SlapGesture] = [SingleSlap(), SingleSlap(), SingleSlap(), SingleSlap()]
    var threeSlapOneDouble : [SlapGesture] = [SingleSlap(), SingleSlap(), SingleSlap(), DoubleSlap()]
    var twoDoubletwoSlap : [SlapGesture] = [DoubleSlap(), DoubleSlap(), SingleSlap(), SingleSlap()]
    var twoSlapOneDown : [SlapGesture] = [SingleSlap(), SingleSlap(), SlapDown()]
    
    //game related values
    var comboBarSize : Int = 0
    var queue : ([[SlapGesture]])? = nil
    var currentGesture: SlapGesture? = nil
    var currentGetureIndex: Int = 0
    
    func didLoadFromCCB()
    {
        queue = [self.fourSlap, self.threeSlapOneDouble, self.fourSlap, self.twoSlapOneDown]
        
        self.gestureMessage!.string = ""
        let thisView = CCDirector.sharedDirector().view
        
        // listen for swipes to the left
        let leftSelector : Selector = "swipeLeft"
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: leftSelector)
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        thisView.addGestureRecognizer(swipeLeft)
        
        // listen for swipes to the right
        var rightSelector : Selector = "swipeRight"
        let swipeRight = UISwipeGestureRecognizer(target: self, action: rightSelector)
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        thisView.addGestureRecognizer(swipeRight)
        
        //listen for swipes to the top
        let upSelector : Selector = "swipeUp"
        let swipeUp = UISwipeGestureRecognizer(target: self, action: upSelector)
        swipeUp.direction = UISwipeGestureRecognizerDirection.Up
        thisView.addGestureRecognizer(swipeUp)
        
        //listen for swipes to the bottom
        let downSelector : Selector = "swipeDown"
        let swipeDown = UISwipeGestureRecognizer(target: self, action: downSelector)
        swipeDown.direction = UISwipeGestureRecognizerDirection.Down
        thisView.addGestureRecognizer(swipeDown)
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
        }
        else
        {
            
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
        currentGesture = queue![0][0]
    }
    
}