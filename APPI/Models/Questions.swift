//
//  Questions.swift
//  APPI
//
//  Created by Илья on 09.09.2022.
//

import Foundation

struct Question {
    let title: String
    let answers: [Answer]
}

struct Answer {
    let title: String
    let type: [CatType]
}

enum CatType: String {
   case frenchCat = "frenchCat"
   case englishCat = "englishCat"
   case russianCat = "russianCat"
   case spanishCat = "spanishCat"
   case japaneseCat = "chineseCat"
   case germanCat = "germanCat"
    
    var descriptionCat: String {
        switch self {
            case .frenchCat:
                return """
                You are a cat who appreciates beauty in things. You are a
                sociable and gallant cat. You are a cat that can meow beautifully.
                You are a cat who prefers fish and croissants. You also love to be
                lazy and spend your free time lying in a warm blanket
                """
                
            case .englishCat:
                return """
                You're a cat who's used to walking with an umbrella. You like to walk
                on your own. You are used to eating fish only with tea. Your meow is
                understood all over the world. You are proud to be an English
                """
                
            case .russianCat:
                return """
                Cold winter nights are not scary for you, so you were born in a warm
                fur coat with an ear flap hat. You never give up and will always find
                a way to get a piece of sausage from the top shelf of the refrigerator.
                If you find a sausage, be sure to share it with your neighbor
                """
                
            case .spanishCat:
                return """
                You're not the kind of cat you can call a workaholic. You're postponing
                all your business until tomorrow. You like to tease a neighbor's bull.
                Your favorite football team is Barcelona FC, and you have been preparing
                to get into this team since childhood, training with grandmother's
                ball of thread. You don't eat anything but stewed meat with vegetables.
                """
                
            case .japaneseCat:
                return """
                You are a hardworking cat, so you always steal a screwdriver, nuts and bolts
                from your owner. You are inventive. You work 18 hours a day to come up with
                another interesting thing. You don't eat anything but sushi with fish and rice.
                You don't walk because you don't have time for it
                """
                
            case .germanCat:
                return """
                Sausages are your main delicacy. Despite the fact that most people in
                Germany prefer beer, you are the right cat and drink only milk. Although
                you wouldn't give up beer. You value cleanliness and always demand that
                your cat tray be always cleaned. You are very punctual and are never late
                for lunch. You are straightforward enough and always bite someone you don't like
                """
        }
    }
}


extension Question {
   
   static func getQuestions() -> [Question] {
         [
           Question(
               title: "Which color do you prefer?",
               answers: [
                   Answer(title: "Red", type: [.spanishCat, .japaneseCat]),
                   Answer(title: "White", type: [.russianCat, .frenchCat]),
                   Answer(title: "Black", type: [.germanCat, .englishCat]),
                   Answer(title: "Grey", type: [.englishCat, .frenchCat])
               ]
           ),
           Question(
               title: "What's your favorite food?",
               answers: [
                   Answer(title: "Sausage", type: [.germanCat, .russianCat]),
                   Answer(title: "Fish", type: [.russianCat, .japaneseCat]),
                   Answer(title: "Sushi", type: [.japaneseCat, .russianCat]),
                   Answer(title: "Sandwich", type: [.englishCat, .spanishCat])
               ]
           ),
           Question(
               title: "What do you like to do most?",
               answers: [
                   Answer(title: "To sleep", type: [.spanishCat, .frenchCat]),
                   Answer(title: "To eat", type: [.russianCat, .germanCat]),
                   Answer(title: "To walk", type: [.frenchCat, .englishCat]),
                   Answer(title: "To play", type: [.japaneseCat, .germanCat])
               ]
           ),
           Question(
               title: "What kind of movies do you like?",
               answers: [
                   Answer(title: "Melodramas", type: [.frenchCat, .spanishCat]),
                   Answer(title: "Comedies", type: [.russianCat, .germanCat]),
                   Answer(title: "Documentaries", type: [.germanCat, .japaneseCat]),
                   Answer(title: "Differents", type: [.englishCat, .russianCat])
               ]
           )
       ]
   }
}
