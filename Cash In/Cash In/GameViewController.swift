//
//  GameViewController.swift
//  Cash In
//
//  Created by James Romero on 12/5/20.
//
/* Todo List
 -Menu Screen
 -Game Screen
 -Answer Object
 -Question Object
 
 */
import UIKit
import SpriteKit
import GameplayKit

//We/Users/jlloyd/Downloads/CashIn_Game-main 2/Cash In/Cash In/Main.storyboard are using a struct to hold our questions data from the question itself, for answer options and the actual answer in terms of an integer
struct ListofQuestions  {
    var Question : String!
    var Answers : [String]!
    var Answer : Int!
}



class GameViewController: UIViewController {
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    //This label will be used to present a question to the user
    @IBOutlet weak var qLabel: UILabel!
   //This array of buttons will be used to present a list of 4 answers
    @IBOutlet var Buttons: [UIButton]!
    //This button will be used to allow user to take his money and dip(another word for go)
    @IBOutlet weak var contentButton: UIButton!
    //This label will be used as a score feature which will display money earned
    @IBOutlet weak var gameScore: UITextField!
    
    //Array of question structures that was created
   var Questions = [ListofQuestions]() //Type Inference
   var questionNumber = Int()
   var answerNumber = Int()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        //Need to add UI scrollview
        
       
//            // Load the SKScene from 'GameScene.sks'
//            if let scene = MainMenu(fileNamed: "MainMenu") {
//                // Set the scale mode to scale to fit the window
//                scene.scaleMode = .aspectFill
//
//                // Present the scene
//                view.presentScene(scene)
//            }
//
//            view.ignoresSiblingOrder = true
//
//            view.showsFPS = true
//            view.showsNodeCount = true
            
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //We will add our questions manually. There is an easier way of doing this as reading in questions from a file. Still learing the swift language
            Questions = [ListofQuestions(Question: "In the UK, the abbreviation NHS stands for National what Service?", Answers: ["Humanity", "Health", "Honour", "Household"], Answer: 2),
                         ListofQuestions(Question: "Which Disney character famously leaves a glass slipper behind at a royal ball?", Answers: ["Pocahontas", "Sleeping Beauty", "Cinderella", "Elsa"], Answer: 3),
                         ListofQuestions(Question: "What name is given to the revolving belt machinery in an airport that delivers checked luggage from the plane to baggage reclaim?", Answers: ["Hangar", "Terminal", "Concourse", "Carousel"], Answer: 4),
                         ListofQuestions(Question: "Which of these brands was chiefly associated with the manufacture of household locks?", Answers: ["Phillips", "Flymo", "Chubb", "Ronseal"], Answer: 3),
                         ListofQuestions(Question: "The hammer and sickle is one of the most recognisable symbols of which political ideology?", Answers: ["Republicanism", "Communism", "Conservatism", "Liberalism"], Answer: 2),
                         ListofQuestions(Question: "Which toys have been marketed with the phrase “robots in disguise”?", Answers: ["Bratz Dolls", "Sylvanian Families", "Hatchimals", "Transformers"], Answer: 4),
                         ListofQuestions(Question: "What does the word loquacious mean?”?", Answers: ["Angry", "Chatty", "Beautiful", "Shy"], Answer: 2),
                         ListofQuestions(Question: "Obstetrics is a branch of medicine particularly concerned with what?", Answers: ["Childbirth", "Broken bones", "Heart conditions", "Old age"], Answer: 1),
                         ListofQuestions(Question: "In Doctor Who, what was the signature look of the fourth Doctor, as portrayed by Tom Baker?", Answers: ["Bow-tie, braces and tweed jacket", "Wide-brimmed hat and extra long scarf", "Pinstripe suit and trainers", "Cape, velvet jacket and frilly shirt"], Answer: 2),
                         ListofQuestions(Question: "Which of these religious observances lasts for the shortest period of time during the calendar year?", Answers: ["Bahamas", "US Virgin Islands", "Turks and Caicos Islands", "Bermuda"], Answer: 1),
                         ListofQuestions(Question: "At the closest point, which island group is only 50 miles south-east of the coast of Florida?", Answers: ["Angry", "Chatty", "Beautiful", "Shy"], Answer: 2),
                         ListofQuestions(Question: "Construction of which of these famous landmarks was completed first?", Answers: ["Empire State Building", "Royal Albert Hall", "Eiffel Tower", "Big Ben Clock Tower"], Answer: 4)]
                         
            
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        }
    
    //Function is used to select a question but at the same time remove it so that the same question is not used again within the same game
    func PickQuestion(){
        
        if Questions.count > 0{
            //Random question generator
            questionNumber = Int(arc4random()) % Questions.count
            qLabel.text = Questions[questionNumber].Question //adds one of the question to the label
            //We are using a number index to place the question in one of the for buttons
            answerNumber = Questions[questionNumber].Answer
            
            for i in 0..<Buttons.count{
                //This for loop is used to place 4 of the potential answers inside the buttons
                Buttons[i].setTitle(Questions[questionNumber].Answers[i], for: .normal)
                
            }
            //We use the remove instance method to "Remove" the question for that paticular game. This will avoid any duplicate questions
            Questions.remove(at: questionNumber)
        }
        else{
            NSLog("Done")
        }
    }
    
    @IBAction func Btn1(_ sender: Any) {
        if answerNumber == 0{
            
            PickQuestion()
        }
        else{
            NSLog("Wrong Answer!") //We can maybe add you won this anount of cash in that statement.
            //Add feature later
            //End game
            //game score divided by integer
            //Equals to the amount of money user won
        }
    }
    
    @IBAction func Btn2(_ sender: Any) {
        if answerNumber == 1{
            
            PickQuestion()
        }
        else{
            NSLog("Wrong Answer!") //We can maybe add you won this anount of cash in that statement.
            //Add feature later
            //End game
            //game score divided by integer
            //Equals to the amount of money user won
        }
    }
    
    @IBAction func Btn3(_ sender: Any) {
        if answerNumber == 2{
            
            PickQuestion()
        }
        else{
            NSLog("Wrong Answer!") //We can maybe add you won this anount of cash in that statement.
            //Add feature later
            //End game
            //game score divided by integer
            //Equals to the amount of money user won
        }
    }
    
    @IBAction func Btn4(_ sender: Any) {
        if answerNumber == 3{
            
            PickQuestion()
        }
        else{
            NSLog("Wrong Answer!") //We can maybe add you won this anount of cash in that statement.
            //Add feature later
            //End game
            //game score divided by integer
            //Equals to the amount of money user won
        }
    }
    
    @IBAction func BtnR(_ sender: Any) {
        if answerNumber == 4{
            
            //ConcedeFunction() add function later
        }
    }
    
    
    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}


