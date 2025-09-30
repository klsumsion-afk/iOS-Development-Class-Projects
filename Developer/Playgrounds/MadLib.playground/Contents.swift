import UIKit

var greeting = "Hello, playground"
func generateMadLib(noun1: String, noun2: String, noun3: String, noun4: String, noun5: String, noun6: String, noun7: String, noun8: String, adjective1: String, adjective2: String, adjective3: String, adjective4: String) -> String {
    
    if noun1.isEmpty {
        print("Noun1 Invalid Input")
    } else if noun2.isEmpty {
        print("Noun2 Invalid Input")
    } else if noun3.isEmpty {
        print("Noun3 Invalid Input")
    } else if noun4.isEmpty {
        print("Noun4 Invalid Input")
    } else if noun5.isEmpty {
        print("Noun5 Invalid Input")
    } else if noun6.isEmpty {
        print("Noun6 Invalid Input")
    } else if noun7.isEmpty {
        print("Noun7 Invalid Input")
    } else if noun8.isEmpty {
        print("Noun8 Invalid Input")
    } else if adjective1.isEmpty {
        print("Adjective1 Invalid Input")
    } else if adjective2.isEmpty {
        print("Adjective2 Invalid Input")
    } else if adjective3.isEmpty {
        print("Adjective3 Invalid Input")
    } else if adjective4.isEmpty {
        print("Adjective4 Invalid Input")
    }
    
    let randomStorySelection = Int.random(in: 1...3)
    switch randomStorySelection {
    case 1:
        return "Once upon a time there was a \(noun1) princess who lived in a \(noun2). One day a \(adjective1) \(noun3) came and stole the princess's \(noun4). The princess was distraught, so she went on a quest to recruit a \(noun5), \(noun6), and \(noun7) to rescue her \(noun4). The princess and her band of \(adjective2) comrades set off towards the \(noun3). After an unfathomable amount of time the princess and her comrades found the \(noun3) who stole her \(adjective3) \(noun4). The princess and her comrades defeated the \(noun3) with the power of \(noun8). The princess, \(noun5), \(noun6), \(noun7) retuned home \(adjective4)."
    case 2:
        return "In a \(noun1) far far away, there once lived a \(adjective1) \(noun2). This \(noun2) was so \(adjective1) that all \(noun3) feared yet admired the \(adjective2) \(noun2). This caused \(noun2) to feel \(adjective3) because they were lonely. So one \(adjective2) \(noun4), the \(noun2) set off to make \(noun5). First, the \(noun2) met a \(adjective1) \(noun6), but this \(noun6) was too jealous to bother with \(noun2), so \(noun2) left. Next, \(noun2) met \(noun7). \(noun7) screamed and ran away! Feeling \(adjective3), \(noun2) wandered onward and eventually stumbled into the \(adjective4) \(noun8). It was love at first sight! The \(adjective4) \(noun2) and the \(adjective1) \(noun8) ran off into the magical sunset to never be seen again!"
    case 3:
        return "There once lived a \(adjective1) dragon who resided within the \(adjective2) realm. This dragon was mighty and powerful. All trembled beneath the \(adjective1) dragon! To be rid of this destructive mence, a \(adjective3) \(noun1) went on a quest to gather allies who would help defeat this horrific dragon who ruled the \(adjective2) realm. \(noun1) first discovered a \(noun2) singing amongst the burning fields. Next, \(noun1) tripped and fell onto a gigantic \(noun3). Then, \(noun1) bought cookies from a wise old \(noun4). Ever marching onward, the \(noun1) soon encountered the glorious and mighty \(noun5) warrior. When fleeing danger in the silverblood woods, \(noun1) ran with the quick footed \(noun6). In the crimson peaks as \(noun1) gathered magma berries, a clumsy but resourceful \(noun7) benevolently fell upon \(noun1). Lastly, crooked \(noun8) stole from \(noun1), but \(noun1) never turns down a recruitment opportunity! At the end of the journey, at the maw of the dragon's lair, \(noun1) found themselves surrounded by...No great or lowly allies, not even a coniving thief. So \(noun1) faced the \(adjective1) dragon alone, and with great courage turn and left in a \(adjective4) dash."
    default:
        return "Error"
    }
}

generateMadLib(noun1: "racoon", noun2: "garage", noun3: "drake", noun4: "screwdriver", noun5: "dog", noun6: "mechanic", noun7: "rock singer", noun8: "friendship", adjective1: "smelly", adjective2: "odd", adjective3: "magical", adjective4: "victorious")
