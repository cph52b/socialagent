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

var string = "They bought alabama hot pockets"

var value = 0;
var autoGrade = 0;

for var index = 0; index < count; index++ {
    if string.rangeOfString(dictionary[index]) != nil {
            value++
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

print(autoGrade)
