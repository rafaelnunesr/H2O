//
//  MainControllerTests.swift
//  H2OTests
//
//  Created by Rafael Nunes Rios on 3/28/21.
//

import XCTest

class MainControllerTests: XCTestCase {
    
    let controller = MainController()

    override func setUpWithError() throws {}

    override func tearDownWithError() throws {}

    func testShouldReturn10CupsFor2LitersOfWater() {
        
        let qttCups = self.controller.calculateQuantityOfCups(cupSizeMl: 200, quantityWaterMl: 2000)
        
        XCTAssertEqual(qttCups, 10)
    }
    
    func testShouldReturn11CupsFor2LitersOfWater() {
        let qttCups = self.controller.calculateQuantityOfCups(cupSizeMl: 180, quantityWaterMl: 2000)
        
        XCTAssertEqual(qttCups, 11)
    }
    
    func testShouldReturn30PercentFor600MlOf2000Ml() {
        let percentage = self.controller.calculatePercentageOfWater(totalDrank: 600, quantityWaterMl: 2000)
        
        XCTAssertEqual(percentage, 30)
    }

}
