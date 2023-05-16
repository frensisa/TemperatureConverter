//
//  InfoViewController.swift
//  TemperatureConverter
//
//  Created by frensisa daudze on 16/05/2023.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var infoText: String = "Info"
    var nameText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if !nameText.isEmpty{
            nameLabel.text = nameText
            infoLabel.text = infoText
        }
        
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
