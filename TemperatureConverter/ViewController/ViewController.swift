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
    
    @IBOutlet weak var tempSegmentControler: UISegmentedControl!
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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Info" {
            guard let vc = segue.destination as? InfoViewController else {return}
            vc.infoText = "Info ViewController"
            vc.nameText = "iOS"
        }
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
        
       
        let celsiusTemp = Int(value)
        celciusLabel.text = "\(celsiusTemp) C°"
        let fahrTemp = Double(value*1.8+32)
        let fomattedFahrTemp = String(format: "%.2f", fahrTemp)
        resultLabel.text = "\(fomattedFahrTemp) F°"

        var convertedTempString = ""
        //#warning("switch case for calculation")
        // convertedTempString = convertTempFrom(celsius: celsiusTemp)
        switch tempSegmentControler.selectedSegmentIndex{
        case 0:
            let fahrenheitTempString = String(format: "%.2f", convertTempFrom(celsius: celsiusTemp).fahrenheit)
            convertedTempString = fahrenheitTempString + " F°"
        default:
            let kelvinTempString = String(format: "%.2f", convertTempFrom(celsius: celsiusTemp).kelvin)
            convertedTempString = kelvinTempString + " K°"
        
        }
        resultLabel.text = convertedTempString
    }
    
    func convertTempFrom(celsius: Int) -> (fahrenheit: Double, kelvin: Double){
     //   #warning("calc from cels to fahr and from cels to kelv")
        let fahrenheit = Double(celsius) * 1.8 + 32
        let kelvin = Double(celsius) + 273.15
        
        return(fahrenheit,kelvin)
    }
    
    
    
}

