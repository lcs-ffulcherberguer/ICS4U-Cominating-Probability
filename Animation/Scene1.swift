
//
//  Plant3.swift
//  Animation
//
//  Created by Fulcherberguer, Fernanda on 2021-05-30.
//


import Foundation
import CanvasGraphics

class Scene1: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Turn on high performance
        canvas.highPerformance = true
        
        var vizualizedPlant5 = Visualizer(fromJSONFile: "", drawingOn: canvas)
        
        for x in stride(from: 50.0, through: 450.0, by: 100.0) {
            let a = 0.001
            let c = 100.0
            let y = a * x * x + c
            
            canvas.drawEllipse(at: Point(x: Double(x), y: Double(y)), width: <#T##Int#>, height: <#T##Int#>)
            
            
            
        }
        
        
        
        
        
        
        
        
        
    }



