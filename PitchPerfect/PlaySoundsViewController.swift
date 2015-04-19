//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Mohammed Safwat on 4/18/15.
//  Copyright (c) 2015 Tryvin. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    var audioPlayer : AVAudioPlayer!
    var receivedAudio : RecordedAudio!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        audioPlayer = AVAudioPlayer(contentsOfURL: receivedAudio.filePathUrl, error: nil)
        audioPlayer.enableRate = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playSoundInSlowRate(sender: AnyObject) {
        playSoundWithRate(0.5)
    }

    @IBAction func playSoundInFastRate(sender: AnyObject) {
        playSoundWithRate(2.0)
    }

    @IBAction func stopPlayingSound(sender: AnyObject) {
        audioPlayer.stop()
    }
    
    func playSoundWithRate(rate : Float)
    {
        audioPlayer.stop()
        audioPlayer.rate = rate
        audioPlayer.play()
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
