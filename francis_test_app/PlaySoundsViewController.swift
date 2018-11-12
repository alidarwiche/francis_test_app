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

    var audioPlayer:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if var filePath = Bundle.main.path(forResource: "movie_quote", ofType: "mp3") {
            var filePathUrl = NSURL.fileURL(withPath: filePath)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: filePathUrl)
                audioPlayer.enableRate = true
            } catch {
                print("audioPlayer is not initialized")
            }
        } else {
            print("the filePath is empty")
        }
    }
    
    @IBAction func playSlowAudio(_ sender: Any) {
        // Play audio slowly
        playAudio(rate: 0.5)
    }
    
    @IBAction func playFastAudio(_ sender: Any) {
        // Play audio quickly
        playAudio(rate: 2.0)
    }
    
    func playAudio(rate: Float) {
        audioPlayer.stop()
        audioPlayer.currentTime = 0.0
        audioPlayer.rate = rate
        audioPlayer.play()
    }
    
    @IBAction func stopAudio(_ sender: Any) {
        //Stop audio
        audioPlayer.stop()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
