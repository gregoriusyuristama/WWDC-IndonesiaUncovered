//
//  Sound.swift
//  WWDC-IndonesiaUncovered
//
//  Created by Gregorius Yuristama Nugraha on 09/04/23.
//

import AVFoundation

class Sound {

    static var player:AVAudioPlayer?

    static func playaudio(soundfile: String) {

        if let path = Bundle.main.path(forResource: soundfile, ofType: nil){
            print("<<<<<<<<<<<<<<<<<<<<<PATH >>>>>>>>>>>>>>>>>>>>>>>>>",path)
            do{

                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                player?.prepareToPlay()
                player?.play()

            }catch {
                print("<<<<<<<<<<<<<<<<<<<<<Error >>>>>>>>>>>>>>>>>>>>>>>>")
            }
        }
    }
}
