import UIKit
import Foundation

/*
 Question 1
 Take a look at this struct that represents an alen:
 struct Alien {
  var name: String
  var height: Double
  var homePlanet: String
 }
 let bilbo = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")
 
 Will these three lines of code run? If so, why not?

 bilbo.name = "Jake"
 bilbo.height = 1.42
 bilbo.homePlanet = "Saturn"
 
 */

struct Alien {
  var name: String
  var height: Double
  var homePlanet: String
}

let bilbo = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")


// Gives error because blbo is a let instance
//bilbo.name = "Jake"
//bilbo.height = 1.42
//bilbo.homePlanet = "Saturn"



/*
 my answer - yes
 the 3 lines will run because struct is not private
 
 Solution
 No it won't compile. The Alien struct is a value type and it's underlying properties are immutable by default, if a created instance is a constant those properties cannot be mutated. In order to mutate the properties of an Alien instance it must be marked with a var.

 Retro
 My answer was wrong because I didn't opay attention to the creation of bilbo
 Bilbo was created with a let instance - makes it immutable
 if Bilbo ws created with a var instance - the lines of code would run

 */

// Change the declaration of bilbo so that the above three lines of code do work:

var bilbo2 = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")

// no error because bilbo2 is declared as a var allowing it to be mutated
bilbo2.name = "Jake"
bilbo2.height = 1.42
bilbo2.homePlanet = "Saturn"

