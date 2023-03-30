//
//  CustomCell.swift
//  MyLocation2
//
//  Created by Apple on 20.03.2023.
//

import UIKit

//Кастомная ячейка смысл в том что мы накидываем в сториборде в ячейке любые поля, кнопки элементы задаем им констрейнты и в этот класс подтаскиваем аутлеты и экшены


class CustomCell: UITableViewCell {

    @IBOutlet weak var altitudeLabel: UILabel!
    
    @IBOutlet weak var longtitudeLabel: UILabel!
    
}
