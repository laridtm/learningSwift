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
        
        let defenseMage = lux.defend()
        let defenseTank = garen.defend()
        let defenseShooter = missFortune.defend()
        let defenseSupport = taric.defend()
        
        XCTAssertEqual(defenseMage, 30)
        XCTAssertEqual(defenseTank, 60)
        XCTAssertEqual(defenseShooter, 30)
        XCTAssertEqual(defenseSupport, 40)
        
    }
    
    func testCheckIfTheEnemyIsTakingDamageCorrectly() {
        
        var champion1: Champion!
        var champion2: Champion!
        
        champion1 = lux
        champion2 = garen
        
        var lifeChampion2 = champion2.life
        
        champion1.attack(champion2: &champion2)
        
        lifeChampion2 = lifeChampion2 - champion1.damage + champion2.defend()
        
        XCTAssertEqual(lifeChampion2, champion2.life)
        
    }
    
    func testCheckIfTheDamageOfTheChampionMatchesHisClass() {
        
        XCTAssertEqual(lux.spell, 70)
        XCTAssertEqual(garen.attack, 40)
        XCTAssertEqual(missFortune.ultimate, 95)
        XCTAssertEqual(taric.attack, 40)
        
    }
    
    func testFightToTheDeath() {
        
        var champion1: Champion!
        var champion2: Champion!
        
        champion1 = lux
        champion2 = garen
        
        let fight = Fight(champion1: champion1, champion2: champion2)
        fight.fight()
        
        XCTAssertTrue(champion1.life <= 0 || champion2.life <= 0)
    }
    
}
