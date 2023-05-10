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
        //print("tempSlider:", tempSlider.value)
        updateResultLabelValue(value: Double(tempSlider.value))
    }
    
    @IBAction func segmentValueChanged(_ sender: Any) {
        updateResultLabelValue(value: Double(tempSlider.value))
    }
    func updateResultLabelValue(value: Double){
        print(value)
        //let celsiusTemp = Int(value)
        
        let celsiusTemp = Measurement(value: value, unit: UnitTemperature.celsius)
        celciusLabel.text = "\(celsiusTemp)"
        let fahrTemp = celsiusTemp.converted(to: .fahrenheit).value
        let formattedFahrTemp = String(format: "%.2f", fahrTemp)
        resultLabel.text = "\(formattedFahrTemp) F°"
//        let celsiusTemp = Int(value)
//        celciusLabel.text = "\(celsiusTemp) C°"
//        let fahrTemp = Double(value*1.8+32)
//        let fomattedFahrTemp = String(format: "%.2f", fahrTemp)
//        resultLabel.text = "\(fomattedFahrTemp) F°"
//
        var convertedTempString = ""
        #warning("switch case for calculation")
        // convertedTempString = convertTempFrom(celsius: celsiusTemp)
        
    }
    
    func convertTempFrom(celsius: Int) -> (fahrenheit: Double, kelvin: Double){
        #warning("calculation from cels to fahr and from cels to kelv")
        
       
        
        return(0,0)
    }
    
    
    
}

