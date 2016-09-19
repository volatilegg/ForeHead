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
            
        }
    }
    
    var selectedWord: String? = "Put phone on your 4Head"
    
    var selectedList: [WordItem]?
    
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
                    print("up")
                } else if data.acceleration.screenIsOn4head {
                    print("4Head")
                } else if data.acceleration.screenIsDown {
                    print("down")
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
    
    @objc private func endGame() {
        print("End game")
//        performSegue(withIdentifier: segueToResult, sender: nil)
    }
}

