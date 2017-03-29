//
//  ViewController.swift
//  Vibrate
//
//  Created by Marius Constantinescu on 29/03/2017.
//  Copyright © 2017 Nodes. All rights reserved.
//

import UIKit
import AudioToolbox


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Actions
    
    @IBAction func selectionChanged(_ sender: Any) {
        let selectionFeedbackGenerator = UISelectionFeedbackGenerator()
        selectionFeedbackGenerator.selectionChanged()
    }
    
    @IBAction func lightImpactOccurred(_ sender: Any) {
        let lightImpactFeedbackGenerator = UIImpactFeedbackGenerator(style: .light)
        lightImpactFeedbackGenerator.impactOccurred()
    }
    
    @IBAction func mediumImpactOccurred(_ sender: Any) {
        let mediumImpactFeedbackGenerator = UIImpactFeedbackGenerator(style: .medium)
        mediumImpactFeedbackGenerator.impactOccurred()
    }
    
    @IBAction func heavyImpactOccurred(_ sender: Any) {
        let heavyImpactFeedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
        heavyImpactFeedbackGenerator.impactOccurred()
    }

    @IBAction func successNotificationOccurred(_ sender: Any) {
        let successNotificationFeedbackGenerator = UINotificationFeedbackGenerator()
        successNotificationFeedbackGenerator.notificationOccurred(.success)
    }
    
    @IBAction func warningNotificationOccurred(_ sender: Any) {
        let warningNotificationFeedbackGenerator = UINotificationFeedbackGenerator()
        warningNotificationFeedbackGenerator.notificationOccurred(.warning)
    }
    
    @IBAction func errorNotificationOccurred(_ sender: Any) {
        let errorNotificationFeedbackGenerator = UINotificationFeedbackGenerator()
        errorNotificationFeedbackGenerator.notificationOccurred(.error)
    }
    
    @IBAction func vibrate(_ sender: Any) {
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }
}

