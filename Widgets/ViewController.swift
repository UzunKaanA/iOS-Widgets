//
//  ViewController.swift
//  Widgets
//
//  Created by Kaan Uzun on 2.05.2024.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var segmentedControl: UISegmentedControl!
  @IBOutlet weak var labelSegmented: UILabel!
  @IBOutlet weak var labelResult: UILabel!
  @IBOutlet weak var labelTextfield: UITextField!
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var labelSwitch: UILabel!
  @IBOutlet weak var buttonView: UIButton!
  @IBOutlet weak var mySwitch: UISwitch!
  @IBOutlet weak var slider: UISlider!
  @IBOutlet weak var labelSlider: UILabel!
  @IBOutlet weak var labelStepper: UILabel!
  @IBOutlet weak var stepper: UIStepper!
  @IBOutlet weak var indicator: UIActivityIndicatorView!
  

  override func viewDidLoad() {
    super.viewDidLoad()

    if mySwitch.isOn {
      labelSwitch.text = "Switch: ON"
    } else {
      labelSwitch.text = "Switch: OFF"
    }

    let chosenIndex = segmentedControl.selectedSegmentIndex
    let category = segmentedControl.titleForSegment(at: chosenIndex)
    labelSegmented.text = "Category: \(category!)"


    labelSlider.text = String(Int(slider.value))

    //kotlin visibility
    indicator.isHidden = true

  }

  @IBAction func segmentedChange(_ sender: UISegmentedControl) {
    let chosenIndex = sender.selectedSegmentIndex
    let category = sender.titleForSegment(at: chosenIndex)
    labelSegmented.text = "Category: \(category!)"
  }
  
  @IBAction func switchChange(_ sender: UISwitch) {
    if sender.isOn {
      labelSwitch.text = "Switch: ON"
    } else {
      labelSwitch.text = "Switch: OFF"
    }
  }
  @IBAction func buttonStart(_ sender: Any) {
    indicator.isHidden = false
    indicator.startAnimating()
  }
  
  @IBAction func buttonStop(_ sender: Any) {
    indicator.isHidden = false
    indicator.stopAnimating()
  }

  @IBAction func changeSlider(_ sender: UISlider) {
    labelSlider.text = String(Int(slider.value))

  }
  
  @IBAction func changeStepper(_ sender: UIStepper) {
    labelStepper.text = String(Int(stepper.value))
  }
  

  @IBAction func buttonView(_ sender: Any) {
    print("Switch Value : \(mySwitch.isOn)")
    let chosenIndex = segmentedControl.selectedSegmentIndex
    let category = segmentedControl.titleForSegment(at: chosenIndex)
    print("Segmented Value: \(category!)")
    print("Slider Value: \(slider.value)")
    print("Stepper Value: \(stepper.value)")
  }
  
  @IBAction func readButton(_ sender: Any) {
    if let getData = labelTextfield.text {
      labelResult.text = getData
    }
  }

  @IBAction func buttonImage1(_ sender: Any) {
    imageView.image = UIImage(named: "p1")
  }
  
  @IBAction func buttonImage2(_ sender: Any) {
      imageView.image = UIImage(named: "p2")
  }
  
}

