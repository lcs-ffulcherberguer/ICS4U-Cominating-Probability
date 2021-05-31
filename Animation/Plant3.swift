//
//  Plant3.swift
//  Animation
//
//  Created by Fulcherberguer, Fernanda on 2021-05-30.
//

import Foundation

import Foundation
import CanvasGraphics

class Plant3: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Turn on high performance
        canvas.highPerformance = true
        
        // Define the basic system
        var leafyPlant = LindenmayerSystem(axiom: "X",
                                           rules: [
                                            "X" : [
                                                Successor(odds: 1, text: """
                                                                            F[+X]-F[-X]+X
                                                                            """),
                                                
                                            ],
                
                                            "F" : [
                                                Successor(odds: 1, text: """
                                                                            FF
                                                                            """),
                                                
                                            
                                            ],
                                           ],
                                           generations: 6)
        
        // Define the visualization
        var visualizedLeafyPlant = Visualizer(for: leafyPlant,
                                              on: canvas,
                                              length: 2000,
                                              reduction: 3,
                                              angle: 20,
                                              initialPosition: Point(x: 100, y: 100),
                                              initialHeading: 90,
                                              colors: [
                                                "0" : LSColor.black,
                                                "1" : LSColor.green,
                                                "2" : LSColor.orange,
                                                "3" : LSColor.purple,
                                                "4" : LSColor.red,
                                                "5" : LSColor.yellow,
                                              ])
        
        // Make a few other versions of this plant
        var secondPlant = visualizedLeafyPlant
        //var thirdPlant = visualizedLeafyPlant
        
        // Slide position of those plants over
        secondPlant.initialPosition = Point(x: 320, y: 100)
        //thirdPlant.initialPosition = Point(x: 400, y: 100)

        // Render the system
        visualizedLeafyPlant.render()
        secondPlant.render()
        //thirdPlant.render()
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        
    }
    
}
