//
//  MainController.swift
//  H2O
//
//  Created by Rafael Nunes Rios on 3/28/21.
//

import Foundation

class MainController {
    
    func calculateQuantityOfCups(cupSizeMl: Int, quantityWaterMl: Int) -> Int {
        let qtt = quantityWaterMl / cupSizeMl
        return lround(Double(qtt))
    }
    
    func calculatePercentageOfWater(totalDrank: Int, quantityWaterMl: Int) -> Int {
        let total = (totalDrank * 100) / quantityWaterMl
        
        return lround(Double(total))
    }
}
