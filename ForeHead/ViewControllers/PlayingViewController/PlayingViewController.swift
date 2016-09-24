//
//  PlayingViewController.swift
//  ForeHead
//
//  Created by Do Duc on 17/09/16.
//  Copyright © 2016 Do Duc. All rights reserved.
//

import UIKit
import CoreMotion

class PlayingViewController: UIViewController {
    private let segueToResult = "kPlayToResultSegue"
    
    @IBOutlet weak var wordLabel: UILabel!
    
    @IBOutlet weak var failedView: UIView!
    @IBOutlet weak var successView: UIView!
    @IBOutlet weak var mainView: UIView!
    
    let coreMotionManager = CMMotionManager()
    
    var timer: Timer?
    
    var selectedCategory: Category? {
        didSet {
            selectedList = selectedCategory?.list
        }
    }
    
    var selectedWord: String? = "Put phone on your 4Head" {
        didSet {
            wordLabel.text = selectedWord
        }
    }
    
    var selectedList: [WordItem]?
    
    var currentIndex: Int = 0
    
    var gameIsStarted: Bool = false
    
    var readyForNextQuestion: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wordLabel.text = selectedWord
        
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(endGame), userInfo: nil, repeats: false)
        
        coreMotionManager.startAccelerometerUpdates(to: OperationQueue.current!) { (data, error) in
            guard error == nil else {
                print("\(error.debugDescription)")
                
                return
            }
            
            if let data = data {
                if data.acceleration.screenIsUp {
                    self.answerQuestionWithResult(correct: true)
                } else if data.acceleration.screenIsOn4head {
                    if !self.gameIsStarted { self.startGame() }
                    self.moveToNextQuestion()
                } else if data.acceleration.screenIsDown {
                    self.answerQuestionWithResult(correct: false)
                }
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let selectedList = selectedList, selectedList.count > 1 {
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func startGame() {
        gameIsStarted = true
    }
    
    private func moveToNextQuestion() {
        if gameIsStarted {
            showMainView()
            
            readyForNextQuestion = false
            
            if let selectedList = selectedList {
                if currentIndex >= selectedList.count {
                    endGame()
                } else {
                    selectedWord = selectedList[currentIndex].word
                }
            }
        }
    }
    
    private func answerQuestionWithResult(correct: Bool) {
        if let selectedList = selectedList, currentIndex < selectedList.count, gameIsStarted {
            if correct {
                showSuccessView()
            } else {
                showFailedView()
            }

            readyForNextQuestion = true
            
            self.selectedList?[currentIndex].result = correct ? .Right : .Wrong
            
            currentIndex += 1
        }
    }
    
    private func showFailedView() {
        failedView.isHidden = false
        successView.isHidden = true
        mainView.isHidden = true
    }
    
    private func showSuccessView() {
        failedView.isHidden = true
        successView.isHidden = false
        mainView.isHidden = true
    }
    
    private func showMainView() {
        failedView.isHidden = true
        successView.isHidden = true
        mainView.isHidden = false
    }
    
    @objc private func endGame() {
        print("End game")
        
//        Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false) { (timer) in
//            performSegue(withIdentifier: segueToResult, sender: nil)
//        }
    }
}

