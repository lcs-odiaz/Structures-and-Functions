/*:
 [Previous](@previous)
 
 The following statement is required to make the playground run.
 
 
 Please do not remove.
 */
import Foundation
/*:
 ## Exercise
 
 Write a function named **shortestDistance** that determines the shortest distance from a point on a Cartesian plane to a line on a Cartesian plane.
 
 The function header should look like this:
 
  ![example](example1.png "example")
 
 You can re-use the **Point** structure and the *distance* function.
 
 You should declare a new **Line** structure.
 
 Recall that a line is defined by it's *slope* and it's *vertical intercept*. What stored properties would you create for a **Line** structure?
 
 Recall that slope, in turn, is defined by it's *rise* and *run*. Could you create a **Slope** structure? What stored properties might it define?
 
 Recall that the shortest distance from a point to a line is the *perpendicular* distance from that point to the line.
 
 Here is a [complete example showing how to find the shortest distance from a point to a line](http://russellgordon.ca/lcs/shortest-distance-example.pdf), using symbolic algebra.
 
 Your job is to implement a solution in code that carries out the necessary mathematics. The beautiful part of this effort is that, once you've "taught" the computer how to do this correctly, you will never need to do this type of work manually again. 👍🏽😅🎉

*/


//structure that represents  point on a plane
struct Point {
    var x : Double = 0.0
    var y : Double = 0.0
}

// define a structure that represents a slope
struct Slope {
    var rise : Double = 1.0
    var run : Double = 1.0
}

//
var cabinsite = Point(x: 6, y: 1.5)
  
//define a structure that represents a slope
struct Line {
    var slope : Slope = Slope(rise: 1.0, run: 1.0)
    var yInt : Double = 3.0
}

// create instance of problem
var slopeOfExitingRoad = Slope(rise : -1, run : 1.0)
var existingRoad = Line (slope : slopeOfExitingRoad, yInt : 9.5)
    

func getSlopeOfPerpendicularLine(from givenLine: Line) -> Slope {

    return Slope(rise: givenLine.slope.run, run: givenLine.slope.rise * -1)
}

//get the perpendicular slope
let perpendicularSlope = getSlopeOfPerpendicularLine (from: existingRoad)

func getYintercept(from p: Point, onlineWith m: Slope) -> Double {
    //get slope as a decimal
    let mDecimal = m.rise / m.run
    //b = y - m * x
    return p.y - mDecimal * p.x
}

let perpendicularLineYintercept = getYintercept(from: cabinsite, onlineWith: perpendicularSlope)

//define equation of new line
let newRoad = Line(slope: perpendicularSlope, yInt: perpendicularLineYintercept)

//next vid 7

// shortest distance func is created
func distance(from: Point, to: Line) -> Double {
    let nSlope = (1 / -line.slope)
    let nInt = point.y - nSlope * point.x
    let x = (line.yInt - nInt) / (nSlope + line.slope)
    let y = nInt + line.yInt + nSlope*x + line.slope*x
    return nInt + line.yInt + nSlope*x + line.slope*x
}
