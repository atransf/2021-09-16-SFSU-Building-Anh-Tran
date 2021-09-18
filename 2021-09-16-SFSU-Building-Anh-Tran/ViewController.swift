//
//  ViewController.swift
//  2021-09-16-SFSU-Building-Anh-Tran
//
//  Created by Anh Tran on 9/17/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var sfsuBuildingView: UIImageView!
    @IBOutlet weak var buildingName: UILabel!
    var imageNumber = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let  imageName = "sfsu\(imageNumber)"
        print("image name: \(imageName)")
        sfsuBuildingView.image = UIImage(named: imageName)
        
        
        
    }
    @IBAction func nextBuildingButtonPressed(_ sender: UIButton) {
        
        imageNumber += 1
        let  imageName = "sfsu\(imageNumber)"
        print("image name: \(imageName)")
        sfsuBuildingView.image = UIImage(named: imageName)
        
                
        if imageName == "sfsu1"{
            buildingName.text = "Business Building"
        } else if imageName == "sfsu2" {
            buildingName.text = "Fine Arts Building"
        } else if imageName == "sfsu3" {
            buildingName.text = "J. Paul Leonard Library"
        } else if imageName == "sfsu4" {
            buildingName.text = "Humanity Building"
        } else {
            buildingName.text = "C.Chavez Student Center Building"
            imageNumber = 0
        }
        
        
    }
    

}

