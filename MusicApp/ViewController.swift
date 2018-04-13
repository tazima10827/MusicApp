//
//  ViewController.swift
//  MusicApp
//
//  Created by 田嶋智洋 on 2018/04/06.
//  Copyright © 2018年 田嶋智洋. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audioPlayer: AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func natusPlayButton(_ sender: Any) {
        setAudioPlayer(soundName: "natsu", type: "mp3")
        audioPlayer.play()
    }
    
    @IBAction func amePlayButton(_ sender: Any) {
        setAudioPlayer(soundName: "ame", type: "mp3")
        audioPlayer.play()
    }
    
    @IBAction func akiPlayButton(_ sender: Any) {
        setAudioPlayer(soundName: "aki", type: "mp3")
        audioPlayer.play()
    }
    func setAudioPlayer(soundName: String,type: String) {
        let soundFilePath = Bundle.main.path(forResource: soundName, ofType: type)!
        let fileURL = URL(fileURLWithPath: soundFilePath)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: fileURL)
            
        }catch{
            print("音楽ファイルが読み込みませんでした")
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

