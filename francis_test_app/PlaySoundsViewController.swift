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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if var filePath = Bundle.main.path(forResource: "movie_quote", ofType: "mp3") {
            
        } else {
            print("the filePath is empty")
        }
        
    }
    
    @IBAction func playSlowAudio(_ sender: Any) {
        //TODO: Play audio slowly
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
