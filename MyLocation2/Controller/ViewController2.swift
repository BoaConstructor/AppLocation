//
//  ViewController2.swift
//  MyLocation2
//
//  Created by Apple on 16.03.2023.
//

import Foundation
import UIKit



class ViewController2: UIViewController {
  
    @IBOutlet weak var tableView: UITableView!
    
    let names = ["Раз","Два","Три","Четыре","Пять","Вышел"," Зайчик","Погу","Лять","Блядь","Блядь","Блядь"]
    

    
   
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        view.backgroundColor = .black
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
      
            
            
        }
    
  
    
    
    
}


extension ViewController2: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Йа нажато")
    }
    
}

extension ViewController2: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: IndexPath())as! CustomCell //тут надо просто даункастить до своей кастомной ячейки
        
        cell.altitudeLabel.text = "Широта"
        cell.longtitudeLabel.text = "Долгота"
        
//        cell.backgroundColor = .blue
//        cell.textLabel?.text = names[indexPath.row]
        
        
        return cell
    }
    
    
}
