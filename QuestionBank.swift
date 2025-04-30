// Question.swift

import Foundation

// Define the structure of a Question
struct Question {
    let text: String        // The question text
    let options: [String]   // The list of answer options
    let correctAnswer: String // The correct answer
}

// Sample question bank (you can expand this with more questions)
let questionBank: [Question] = [
    Question(text: "What is 5 + 3?", options: ["6", "8", "9", "7"], correctAnswer: "B"),
    Question(text: "Who is the president of the USA in 2024?", options: ["Biden", "Trump", "Obama", "Bush"], correctAnswer: "A"),
    Question(text: "What is the capital of France?", options: ["Berlin", "Madrid", "Paris", "Rome"], correctAnswer: "C"),
    Question(text: "Which planet is known as the Red Planet?", options: ["Earth", "Mars", "Jupiter", "Venus"], correctAnswer: "B"),
    Question(text: "What is the boiling point of water (in Celsius)?", options: ["100", "90", "80", "120"], correctAnswer: "A"),
    Question(text: "What color do you get by mixing red and blue?", options: ["Purple", "Green", "Brown", "Pink"], correctAnswer: "A"),
    Question(text: "What is the largest mammal on Earth?", options: ["Elephant", "Blue Whale", "Giraffe", "Hippopotamus"], correctAnswer: "B"),
    Question(text: "Which gas do plants use for photosynthesis?", options: ["Oxygen", "Nitrogen", "Carbon Dioxide", "Hydrogen"], correctAnswer: "C"),
    Question(text: "What is 12 x 6?", options: ["72", "66", "60", "78"], correctAnswer: "A"),
    Question(text: "Which country is known as the Land of the Rising Sun?", options: ["China", "Japan", "Thailand", "India"], correctAnswer: "B"),
    Question(text: "Who wrote 'Romeo and Juliet'?", options: ["Charles Dickens", "William Shakespeare", "Leo Tolstoy", "Mark Twain"], correctAnswer: "B"),
    Question(text: "Which is the smallest continent by land area?", options: ["Europe", "Australia", "Antarctica", "South America"], correctAnswer: "B"),
    Question(text: "Which element has the chemical symbol 'O'?", options: ["Gold", "Oxygen", "Silver", "Iron"], correctAnswer: "B"),
    Question(text: "What is the currency of the UK?", options: ["Euro", "Dollar", "Pound", "Yen"], correctAnswer: "C"),
    Question(text: "How many legs does a spider have?", options: ["6", "8", "10", "12"], correctAnswer: "B")
]

