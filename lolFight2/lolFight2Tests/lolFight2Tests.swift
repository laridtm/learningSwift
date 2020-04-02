//
//  lolFight2Tests.swift
//  lolFight2Tests
//
//  Created by Larissa Diniz  on 15/01/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import XCTest
@testable import lolFight2

class lolFight2Tests: XCTestCase {
    
    var lux: Mage!
    var garen: Tank!
    var missFortune: Shooter!
    var taric: Support!
    
    override func setUp() {
        super.setUp()
        lux = Mage(name: "Lux", life: 100, kills: 0, deaths: 0)
        garen = Tank(name: "Garen", life: 100, kills: 0, deaths: 0)
        missFortune = Shooter(name: "Miss Fortune", life: 100, kills: 0, deaths: 0)
        taric = Support(name: "Taric", life: 100, kills: 0, deaths: 0)
    }
    
    override func tearDown() {
        super.tearDown()
        lux = nil
        garen = nil
        missFortune = nil
        taric = nil
    }
    
    func testCheckIfTheDefenseOfTheChampionMatchesHisClass() {
        
        XCTAssertEqual(lux.defense, 30)
        XCTAssertEqual(garen.armor, 60)
        XCTAssertEqual(missFortune.defense, 30)
        XCTAssertEqual(taric.shield, 40)
        
    }
    
    func testCheckIfTheEnemyIsTakingDamageCorrectly() {
        
        var champion1: Champion!
        var champion2: Champion!
        
        champion1 = lux
        champion2 = garen
        
        var lifeChampion2 = champion2.life
        
        champion1.attack(champion2: &champion2)
        
        lifeChampion2 = lifeChampion2 - champion1.damage + champion2.defend()
        
//        lifeChampion2 -= champion1.damage - champion2.defend()
        
        XCTAssertEqual(lifeChampion2, champion2.life)
        
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
