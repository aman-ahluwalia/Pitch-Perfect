//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Aman on 21/08/15.
//  Copyright (c) 2015 Aman Ahluwalia. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!
    var receivedAudio: RecordedAudio!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    /*    if var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3"){
            var filePathUrl = NSURL.fileURLWithPath(filePath)

            
        } else {
            print("File path is empty!")
        }*/
        
        if (receivedAudio.filePathUrl != nil) {
            audioPlayer = AVAudioPlayer(contentsOfURL: receivedAudio.filePathUrl, error: nil)
            audioPlayer.enableRate = true
        } else {
            println("The filepath is empty");
        }
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playAudio(speed: Float) {
        audioPlayer.stop()
        audioPlayer.currentTime = 0.0
        audioPlayer.rate = speed
        audioPlayer.play()

    }
    

    @IBAction func playSlowAudio(sender: UIButton) {
        var slowSpeed: Float = 0.5
        playAudio(slowSpeed)
    }
   
    @IBAction func playFastAudio(sender: UIButton) {
        var fastSpeed: Float = 2.0
        playAudio(fastSpeed)
    }
    
    @IBAction func stopAudio(sender: UIButton) {
        audioPlayer.stop()
    }
   
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
