//
//  PlaySoundsViewController.swift
//  francis_test_app
//
//  Created by Ali Darwiche  on 11/10/18.
//  Copyright © 2018 Ali Darwiche . All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    @IBOutlet weak var slowButton: UIButton!
    @IBOutlet weak var fastButton: UIButton!
    @IBOutlet weak var highPitchButton: UIButton!
    @IBOutlet weak var lowPitchButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var audioPlayer:AVAudioPlayer!
    var recordedAudioURL:URL!
    var audioFile:AVAudioFile!
    var audioEngine:AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!
    
    enum ButtonType: Int {
        case slow = 0, fast, chipmunk, vader, echo, reverb
    }
    
    override func viewWillAppear(_ animated: Bool) {
        configureUI(.notPlaying)
    }
    
    @IBAction func playSoundForButton(_ sender: UIButton) {
        switch(ButtonType(rawValue: sender.tag)!) {
        case .slow:
            playSound(rate: 0.5)
        case .fast:
            playSound(rate: 1.5)
        case .chipmunk:
            playSound(pitch: 1000)
        case .vader:
            playSound(pitch: -1000)
        case .echo:
            playSound(echo: true)
        case .reverb:
            playSound(reverb: true)
        }

        configureUI(.playing)
    }
    
    @IBAction func stopButtonPressed(_ sender: AnyObject) {
        //Stop audio
        stopAudio()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupAudio()
    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        if var filePath = Bundle.main.path(forResource: "movie_quote", ofType: "mp3") {
//            var filePathUrl = NSURL.fileURL(withPath: filePath)
//            do {
//                audioPlayer = try AVAudioPlayer(contentsOf: filePathUrl)
//                audioPlayer.enableRate = true
//            } catch {
//                print("audioPlayer is not initialized")
//            }
//        } else {
//            print("the filePath is empty")
//        }
//    }
//
//        @IBAction func playSlowAudio(_ sender: Any) {
//            // Play audio slowly
//            playAudio(rate: 0.5)
//        }
//
//        @IBAction func playFastAudio(_ sender: Any) {
//            // Play audio quickly
//            playAudio(rate: 2.0)
//        }
//    
//        func playAudio(rate: Float) {
//            audioPlayer.stop()
//            audioPlayer.currentTime = 0.0
//            audioPlayer.rate = rate
//            audioPlayer.play()
//        }

}
