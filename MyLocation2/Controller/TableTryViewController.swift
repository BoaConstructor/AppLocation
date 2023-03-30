//
//  ViewController2.swift
//  MyLocation2
//
//  Created by Apple on 16.03.2023.
//

import Foundation
import UIKit



class TableTryViewController: UIViewController {
   
    
  
    @IBOutlet weak var tableView: UITableView!
    
    let names = ["Раз","Два","Три","Четыре","Пять","Вышел"," Зайчик","Погу","Лять","Блядь","Блядь","Блядь"]
    

    
   
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        view.backgroundColor = .black
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
      
            
            
        }
    
  
    
    
    
}

//MARK: Делегаты таблицы
extension TableTryViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { //функция срабатывает как только ты нажимаешь на ряд
        print("Йа нажато")
    }

}

//MARK: Датасорсы таблицы

extension TableTryViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int { // возвращает колличество секций
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { //возвращает коллличество рядов в таблице
        return names.count // у нас столько рядов сколько элементов в массиве
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
