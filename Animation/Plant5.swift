//
//  Plant3.swift
//  Animation
//
//  Created by Fulcherberguer, Fernanda on 2021-05-30.
//

import Foundation

import Foundation
import CanvasGraphics

class Plant5: NSObject, Sketchable {
    
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
                                                                            FF[+XW++X-F[+WX]][-X++F-X]
                                                                            """),
                                                
                                            ],
                
                                            "F" : [
                                                Successor(odds: 1, text: """
                                                                            1FX[FX[+XF]]
                                                                            """),
                                                
                                            
                                            ],
                                            
                                            "W" : [
                                                Successor(odds: 1, text: """
                                                                            2[+F-F+F][++WX]
                                                                            """),
                                                
                                            
                                            ],
                                            
                                           ],
                                           generations: 5)
        
        // Define the visualization
        var visualizedLeafyPlant = Visualizer(for: leafyPlant,
                                              on: canvas,
                                              length: 700,
                                              reduction: 3,
                                              angle: 12,
                                              initialPosition: Point(x: 300, y: 80),
                                              initialHeading: 90,
                                              colors: [
                                                "0" : LSColor.black,
                                                "1" : LSColor.green2,
                                                "2" : LSColor.darkgreen,
                                              ])
        
        // Make a few other versions of this plant
        //var secondPlant = visualizedLeafyPlant
        //var thirdPlant = visualizedLeafyPlant
        
        // Slide position of those plants over
        //secondPlant.initialPosition = Point(x: 320, y: 100)
        //thirdPlant.initialPosition = Point(x: 400, y: 100)

        // Render the system
        visualizedLeafyPlant.render()
        //secondPlant.render()
        //thirdPlant.render()
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        
    }
    
}
