//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by frensisa daudze on 07/05/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celciusLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var tempSlider: UISlider!{
        didSet{
            tempSlider.maximumValue = 100
            tempSlider.minimumValue = 0
            tempSlider.value = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        celciusLabel.text = "0 C°"
        resultLabel.text = "32 F°"
    }


    @IBAction func sliderValueChanged(_ sender: Any) {
        print("tempSlider:", tempSlider.value)
        updateResultLabelValue(value: tempSlider.value)
    }
    
    @IBAction func segmentValueChanged(_ sender: Any) {
        updateResultLabelValue(value: tempSlider.value)
    }
    func updateResultLabelValue(value: Float){
        print(value)
        
        let celsiusTemp = Int(value)
        celciusLabel.text = "\(celsiusTemp) C°"
        
        var convertedTempString = ""
        #warning("switch case for calculation")
        // convertedTempString = convertTempFrom(celsius: celsiusTemp)
    }
    
    func convertTempFrom(celsius: Int) -> (fahrenheit: Double, kelvin: Double){
        // calculation from cels to fahr and from cels to kelv
        return(0,0)
    }
    
    
    
}

