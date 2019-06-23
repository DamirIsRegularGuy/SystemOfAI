//
//  ViewController.swift
//  HomeWorkFirst
//
//  Created by Магомед Абдуразаков on 23/06/2019.
//  Copyright © 2019 Магомед Абдуразаков. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let login = "Abdurazakov"
    let password = "Swiftbook"
    
    @IBOutlet  var userNameTextField: UITextField!
    @IBOutlet  var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        
        addDoneButtonTo(userNameTextField)
        addDoneButtonTo(passwordTextField)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let vc = segue.destination as? StatusViewController else { return }
        
        switch segue.identifier {
            
        case "segueForAutorization":
            
            guard userNameTextField.text == "Abdurazakov" else {
                vc.status = "Wrong Login"
                return
            }
            
            guard passwordTextField.text == "Swiftbook" else {
                vc.status = "Wrong password"
                return
            }
            
            vc.status = login
            
            
        case "segueForLogin":
            vc.status = "Abdurazakov"
            
        case "segueForPassword":
            vc.status = "Swiftbook"
        default: break
        }
        
        
        
    }
}
extension ViewController: UITextFieldDelegate {
    
    // Метод для отображения кнопки "Готово" на цифровой клавиатуре
    private func addDoneButtonTo(_ textField: UITextField) {
        
        let keyboardToolbar = UIToolbar()
        textField.inputAccessoryView = keyboardToolbar
        keyboardToolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title:"Done",
                                         style: .done,
                                         target: self,
                                         action: #selector(didTapDone))
        
        let flexBarButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
                                            target: nil,
                                            action: nil)
        
        keyboardToolbar.items = [flexBarButton, doneButton]
    }
    
    @objc private func didTapDone() {
        view.endEditing(true)
    }
    
    // Скрываем клавиатуру нажатием на "Done"
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // Скрытие клавиатуры по тапу за пределами Text View
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        view.endEditing(true) // Скрывает клавиатуру, вызванную для любого объекта
    }
    
    
}



