//
//  StoryBrain.swift
//  Destini-iOS13

import Foundation

struct StoryBrain {
    
    var storyNumber = 0
    
    let stories = [
        Story (
            t: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
            ch1: "I'll hop in. Thanks for the help!",
            ch2: "Better ask him if he's a murderer first.",
            ch1Dest: 2,
            ch2Dest: 1),
        Story (
            t: "He nods slowly, unfazed by the question.",
            ch1: "At least he's honest. I'll climb in.",
            ch2: "Wait, I know how to change a tire.",
            ch1Dest: 2,
            ch2Dest: 3),
        Story (
            t: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
            ch1: "I love Elton John! Hand him the cassette tape.",
            ch2: "It's him or me! You take the knife and stab him.",
            ch1Dest: 5,
            ch2Dest: 4),
        Story(
            t: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
            ch1: "The",
            ch2: "End",
            ch1Dest: 0,
            ch2Dest: 0),
        Story(
            t: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
            ch1: "The",
            ch2: "End",
            ch1Dest: 0,
            ch2Dest: 0),
        Story(
            t: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
            ch1: "The",
            ch2: "End",
            ch1Dest: 0,
            ch2Dest: 0)
    ]
    
    func getStoryText() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else {
            storyNumber = currentStory.choice2Destination
        }
    }
    
    
}
