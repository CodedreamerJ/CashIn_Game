//
//  MainMenu.swift
//  Cash In
//
//  Created by James Romero on 12/6/20.
//
import SpriteKit

class MainMenu: SKScene {

  
    func loadGame() {
        /* 1) Grab reference to our SpriteKit view */
        guard let skView = self.view as SKView? else {
            print("Could not get Skview")
            return
        }

        /* 2) Load Game scene */
        guard let scene = MainMenu(fileNamed:"MainMenu.sks") else {
            print("Could not make GameScene, check the name is spelled correctly")
            return
        }

        /* 3) Ensure correct aspect mode */
        scene.scaleMode = .aspectFill

        /* Show debug */
        skView.showsPhysics = true
        skView.showsDrawCount = true
        skView.showsFPS = true

        /* 4) Start game scene */
        skView.presentScene(scene)
    }
//

/* UI Connections */
    var startButton: MSButtonNode!

 override func didMove(to view: SKView) {
    /* Setup your scene here */
    
    /* Set UI connections */
    startButton = self.childNode(withName: "startButton") as! MSButtonNode
    startButton.selectedHandler = {
        //self.loadGame()
        let _:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "GameViewController") as UIViewController
    }

    }
 
}
