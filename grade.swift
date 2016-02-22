import Swift
import Foundation

var dictionary: [String] = 
["2g1c",
"2 girls 1 cup",
"acrotomophilia",
"alabama hot pocket",
"alaskan pipeline",
"anal",
"anilingus"]

var count = dictionary.count

var string = "anal anal anal anilingus"

var value = 0
var autoGrade = 0
var humanGrade = 0
var weightedTotal : Double
var weightedAutoGrade : Double
var weightedHumGrade : Double

for var index = 0; index < count; index++ {
    if string.rangeOfString(dictionary[index]) != nil {
            print("\(dictionary[index])")
            value++
            print("\(dictionary[index]) is a flagged word")
            print(value)
    }
}

if value >= 4 {
    autoGrade = 0
}
else if value == 3 {
    autoGrade = 25
}
else if value == 2 {
    autoGrade = 50
}
else if value == 1 {
    autoGrade = 75
}
else if value == 0 {
   autoGrade = 100
}

//if (goodPost)
    humanGrade = 100
//else
    //humanGrade = 0

weightedAutoGrade = 0.25 * Double(autoGrade)
weightedHumGrade = 0.75 * Double(humanGrade)
weightedTotal = weightedAutoGrade + weightedHumGrade

print("Your post has a grade of \(weightedTotal)")

if weightedTotal >= 90 {
    print("Make post")
    //edit?
}
else if weightedTotal < 90 && weightedTotal >= 70 {
    print("yellow “Make post” button")
    //edit?
}
else if weightedTotal < 70 && weightedTotal >= 50 {
    print("red make post button")
    //edit?
}
else if weightedTotal < 50 {
    print("Please edit your post before continuing")
}
