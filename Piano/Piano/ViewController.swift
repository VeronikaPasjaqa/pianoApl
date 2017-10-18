//
//  ViewController.swift
//  Piano
//
//  Created by ICK Training 5 on 16/10/2017.
//  Copyright © 2017 ICK. All rights reserved.
//
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var notat = ["note1","note2","note3","note4","note5","note6","note7"]
    
    var butoniIShtypur:Int = 0
    
    var audioplayer:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func playsound(_ sender: UIButton) {
         butoniIShtypur = sender.tag
        playSound()
        
        var audioFile = Bundle.main.url(forResource: notat[butoniIShtypur], withExtension: "wav")
        
        audioplayer = try! AVAudioPlayer(contentsOf: audioFile!)
        
        audioplayer.play()
    }
    func playSound(){
        var audioFile = Bundle.main.url(forResource: notat[butoniIShtypur], withExtension: "wav")
        
        audioplayer = try! AVAudioPlayer(contentsOf: audioFile!)
        
        audioplayer.play()
    }
    
}

