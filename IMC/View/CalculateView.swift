//
//  CalculateView.swift
//  IMC
//
//  Created by Rayra Jovaneli on 5/18/22.
//

import UIKit

class CalculateView: UIViewController{
      
    var calculateResult = CalculateModel()
    
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        resultLabel.isHidden = true
        imageView.isHidden = true
    }
    
    
    
    @IBAction func doneButton(_ sender: UIButton) {
        if let weight = Double(weightTextField.text ?? ""), let height = Double(heightTextField.text ?? ""){
        
         calculateResult.imc = weight / (height * height)
            print(calculateResult.imc)
            finalResult()
        }
    }
    func finalResult(){
        
            
        if calculateResult.imc > 0 && calculateResult.imc < 18.5{
            resultLabel.text = "Abaixo do peso"
            calculateResult .image = "magreza"
            resultLabel.isHidden = false
            imageView.isHidden = false
        }
            
        if calculateResult.imc > 18.5 && calculateResult.imc < 24.9{
            resultLabel.text = "Peso normal"
            calculateResult.image = "abaixo"
            resultLabel.isHidden = false
            imageView.isHidden = false
        }
        
        if calculateResult.imc > 25 && calculateResult.imc < 29.9{
            resultLabel.text = "Acima do peso"
            calculateResult.image = "ideal"
            resultLabel.isHidden = false
            imageView.isHidden = false
        }
        if calculateResult.imc > 30{
            resultLabel.text = "Obesidade"
            calculateResult.image = "obesidade"
            resultLabel.isHidden = false
            imageView.isHidden = false
        }
        self.imageView.image = UIImage(named: calculateResult.image)
        
        }


    
        
    }

