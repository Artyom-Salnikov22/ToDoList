//
//  ViewContact.swift
//  ToDoList
//
//  Created by Артём Сальников on 01.07.2024.
//

import UIKit

class ViewContact: UIViewController {
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelSurname: UILabel!
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var descName: UITextView!
    
    
var person = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelName.text = person.name
        labelSurname.text = person.surname
        ImageView.image = UIImage(named: person.imagename)
        
    }

}
