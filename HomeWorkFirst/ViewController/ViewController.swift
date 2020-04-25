//
//  ViewController.swift
//  HomeWorkFirst
//
//  Created by Магомед Абдуразаков on 23/06/2019.
//  Copyright © 2019 Магомед Абдуразаков. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet  var userNameTextField: UITextField!
    @IBOutlet  var passwordTextField: UITextField!
    
    // MARK: - Private Properties
    
    private let login = "Abdurazakov"
    private let password = "Swiftbook"
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        addDoneButtonTo(userNameTextField)
        addDoneButtonTo(passwordTextField)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? StatusViewController else { return }
        
        switch segue.identifier {
        case "segueForAutorization":
            guard userNameTextField.text == login else {
                vc.status = "Wrong Login"
                return
            }
            
            guard passwordTextField.text == password else {
                vc.status = "Wrong password"
                return
            }
            
            vc.status = "Authorization Passed"
            
        case "segueForLogin":
            vc.status = "Abdurazakov"
            
        case "segueForPassword":
            vc.status = "Swiftbook"
            
        default: break
        }
        
    }
    
}

// MARK: - Extension

extension ViewController: UITextFieldDelegate {
    
    // MARK: - Lifecycle
    
    // Скрытие клавиатуры по тапу за пределами Text View
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        view.endEditing(true) // Скрывает клавиатуру, вызванную для любого объекта
    }
    
    // MARK: - Private methods
    
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
    
    // MARK: - Public Methods
    
    // Скрываем клавиатуру нажатием на "Done"
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    // MARK: - Objc Method
    
    @objc private func didTapDone() {
        view.endEditing(true)
    }
    
}



