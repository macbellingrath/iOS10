//
//  WorkoutIntentViewController.swift
//  UnicornIntentsUI
//
//  Created by Mac Bellingrath on 7/3/16.
//  Copyright © 2016 Mac Bellingrath. All rights reserved.
//

import IntentsUI

class WorkoutIntentViewController: UIViewController, INUIHostedViewControlling {
    
    @IBOutlet weak var workoutNameLabel: UILabel!
    private let runningWorkoutIdentifier = "Running"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    // MARK: - INUIHostedViewControlling
    
    // Prepare  view controller for the interaction to handle.
    func configure(with interaction: INInteraction!, context: INUIHostedViewContext, completion: ((CGSize) -> Void)!) {
    
        workoutNameLabel.text = interaction.intent.identifier
        
        if let completion = completion {
            completion(self.desiredSize)
        }
    }
    
    var desiredSize: CGSize {
        return self.extensionContext!.hostedViewMaximumAllowedSize
    }
}
