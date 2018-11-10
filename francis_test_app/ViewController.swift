//
//  ViewController.swift
//  francis_test_app
//
//  Created by Ali Darwiche  on 11/9/18.
//  Copyright © 2018 Ali Darwiche . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingInProgress: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("This is a Git tutorial")
    }
    override func viewDidAppear(_ animated: Bool) {
        // Hide the stop button
        stopButton.isHidden = true
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        print("You finished!")
    }

    @IBAction func recordAudio(_ sender: UIButton) {
        stopButton.isHidden = false
        recordingInProgress.isHidden = false
        // TODO: Record the user's voice
        print("in recordAduio")
    }
    
    @IBAction func stopAudio(_ sender: UIButton) {
        recordingInProgress.isHidden = true
        print("in stopAudio")
    }
}

