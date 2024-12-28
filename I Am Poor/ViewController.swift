//
//  ViewController.swift
//  I Am Poor
//
//  Created by Deepanshu Bajaj on 28/08/24.
//

import UIKit

class ViewController: UIViewController {
    
    // Poor Image Outlets
    @IBOutlet weak var poorImage: UIImageView!
    @IBOutlet weak var imageWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageTrailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageTopConstraint: NSLayoutConstraint!
    
    // Label Outlets
    @IBOutlet weak var poorText: UILabel!
    @IBOutlet weak var labelTrailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var labelLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var labelBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var labelTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var labelHeightConstraint: NSLayoutConstraint!
    
    // Wallet Image Outlets
    @IBOutlet weak var walletImage: UIImageView!
    @IBOutlet weak var walletImageWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var walletImageHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var walletImageTrailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var walletImageTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var walletImageBottomConstraint: NSLayoutConstraint!
    
    // Coal Image-1 Outlets
    @IBOutlet weak var coalImage1: UIImageView!
    @IBOutlet weak var coalImage1WidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var coalImage1HeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var coalImage1TrailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var coalImage1TopConstraint: NSLayoutConstraint!
    @IBOutlet weak var coalImage1LeadingConstraint: NSLayoutConstraint!
    
    // Coal Image-2 Outlets
    @IBOutlet weak var coalImage2: UIImageView!
    @IBOutlet weak var coalImage2WidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var coalImage2HeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var coalImage2TrailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var coalImage2TopConstraint: NSLayoutConstraint!
    
    // Coal Image-3 Outlets
    @IBOutlet weak var coalImage3: UIImageView!
    @IBOutlet weak var coalImage3WidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var coalImage3HeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var coalImage3TrailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var coalImage3TopConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Using constraints to set the image views
        manageImageViews()
        
    }
    
    func manageImageViews() {
        let screenWidth =  UIScreen.main.bounds.width
        let screenHeight =  UIScreen.main.bounds.height
        
        // Check for Landscape or Portrait screen
        if UIDevice.current.orientation.isLandscape {
            
            // Poor Image Constraints
            let imageHeight = screenHeight / 1.2
            let imageWidth = screenWidth / 1.2
            self.imageWidthConstraint.constant = imageWidth
            self.imageHeightConstraint.constant = imageHeight
            self.imageTrailingConstraint.constant = screenWidth / 2 - imageWidth / 1.2
            
            // Label Constraints
            self.labelTopConstraint.constant = screenHeight / 3
            let labelWidth = screenWidth / 1.2
            self.labelTrailingConstraint.constant = (screenWidth / 2 - labelWidth / 2)
            let labelHeight = screenHeight / 0.5
            self.labelHeightConstraint.constant = labelHeight
            self.labelBottomConstraint.constant = screenHeight / 2 + screenHeight / 5
            
            // Wallet Image Constraints
            self.walletImageTopConstraint.constant = screenHeight / 20
            let walletImageHeight = screenHeight / 3
            let walletImageWidth = screenWidth / 3
            self.walletImageWidthConstraint.constant = walletImageWidth
            self.walletImageHeightConstraint.constant = walletImageHeight
            self.walletImageTrailingConstraint.constant = (screenWidth / 2 - walletImageWidth / 30)
            self.walletImageBottomConstraint.constant = screenHeight / 2 + screenHeight / 15
            
            // Coal Image-1 Constraints
            self.coalImage1TopConstraint.constant = screenHeight / 2
            let coalImage1Height = screenHeight / 5
            let coalImage1Width = screenWidth / 5
            self.coalImage1WidthConstraint.constant = coalImage1Width
            self.coalImage1HeightConstraint.constant = coalImage1Height
            self.coalImage1TrailingConstraint.constant = (screenWidth / 1 - coalImage1Width / 3)
            self.coalImage1LeadingConstraint.constant = (screenWidth / 5.8 - coalImage1Width / 2)
            
            // Coal Image-2 Constraints
            self.coalImage2TopConstraint.constant = screenHeight / 2
            let coalImage2Height = screenHeight / 3.5
            let coalImage2Width = screenWidth / 3.5
            self.coalImage2WidthConstraint.constant = coalImage2Width * 2
            self.coalImage2HeightConstraint.constant = coalImage2Height * 2
            self.coalImage2TrailingConstraint.constant = (screenWidth / 1.4 - coalImage2Width / 1.9)
            
            // Coal Image-3 Constraints
            self.coalImage3TopConstraint.constant = screenHeight / 2.3
            let coalImage3Height = screenHeight / 2
            let coalImage3Width = screenWidth / 2
            self.coalImage3WidthConstraint.constant = coalImage3Width
            self.coalImage3HeightConstraint.constant = coalImage3Height
            self.coalImage3TrailingConstraint.constant = (screenWidth / 2.5 - coalImage3Width / 3)

        } else {
            
            // Poor Image Constraints
            self.imageTopConstraint.constant = screenHeight / 30
            let imageHeight = screenHeight / 1.2
            let imageWidth = screenWidth / 1.2
            self.imageWidthConstraint.constant = imageWidth
            self.imageHeightConstraint.constant = imageHeight
            self.imageTrailingConstraint.constant = (screenWidth / 2 - imageWidth / 2)
            
            // Label Constraints
            self.labelTopConstraint.constant = screenHeight / 5
            let labelWidth = screenWidth / 1.2
            self.labelTrailingConstraint.constant = (screenWidth / 2 - labelWidth / 2)
            let labelHeight = screenHeight / 0.5
            self.labelHeightConstraint.constant = labelHeight
            self.labelBottomConstraint.constant = screenHeight / 2 + screenHeight / 5
            
            // Wallet Image Constraints
            self.walletImageTopConstraint.constant = screenHeight / 30
            let walletImageHeight = screenHeight / 3
            let walletImageWidth = screenWidth / 3
            self.walletImageWidthConstraint.constant = walletImageWidth
            self.walletImageHeightConstraint.constant = walletImageHeight
            self.walletImageTrailingConstraint.constant = (screenWidth / 2 - walletImageWidth / 2)
            self.walletImageBottomConstraint.constant = screenHeight / 2 + screenHeight / 6
            
            // Coal Image-1 Constraints
            self.coalImage1TopConstraint.constant = screenHeight / 1.7
            let coalImage1Height = screenHeight / 10
            let coalImage1Width = screenWidth / 10
            self.coalImage1WidthConstraint.constant = coalImage1Width
            self.coalImage1HeightConstraint.constant = coalImage1Height
            self.coalImage1TrailingConstraint.constant = (screenWidth / 1.3 - coalImage1Width / 1)
            
            // Coal Image-2 Constraints
            self.coalImage2TopConstraint.constant = screenHeight / 1.7
            let coalImage2Height = screenHeight / 11
            let coalImage2Width = screenWidth / 11
            self.coalImage2WidthConstraint.constant = coalImage2Width * 3.5
            self.coalImage2HeightConstraint.constant = coalImage2Height * 3.5
            self.coalImage2TrailingConstraint.constant = (screenWidth / 1.3 - coalImage2Width / 2)
            
            // Coal Image-3 Constraints
            self.coalImage3TopConstraint.constant = screenHeight / 2.3
            let coalImage3Height = screenHeight / 2
            let coalImage3Width = screenWidth / 2
            self.coalImage3WidthConstraint.constant = coalImage3Width
            self.coalImage3HeightConstraint.constant = coalImage3Height
            self.coalImage3TrailingConstraint.constant = (screenWidth / 4 - coalImage3Width / 2)
            
            
        }
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        self.manageImageViews()
        
    }

}

