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
            } catch {
                print("audioPlayer is not initialized")
            }
        } else {
            print("the filePath is empty")
        }
    }
    
    @IBAction func playSlowAudio(_ sender: Any) {
        //TODO: Play audio slowly(
        audioPlayer.play()
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
