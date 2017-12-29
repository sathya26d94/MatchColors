//
//  GamePageViewController.swift
//  MatchColors
//
//  Created by SaTHYa on 14/03/17.
//  Copyright © 2017 SaTHYa. All rights reserved.
//

import UIKit

class GamePageViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var timer: TimerUIView!
    @IBOutlet weak var scoreCard: UILabel!
    @IBOutlet weak var colorChoice: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    var nSTimer: Timer!
    var colorIndex: Int = 0
    var score: Int = 0
    var choosenIndex: Int = 1
    var time: Int = 30
    var colorArray: [ UIColor ] = {
        return [UIColor.red,UIColor.yellow,UIColor.magenta,UIColor.green,UIColor.cyan,UIColor.blue,UIColor.black,UIColor.gray,UIColor.darkGray,UIColor.lightGray,UIColor.white,UIColor.orange,UIColor.brown,UIColor.purple,UIColor(red:28/255, green:45/255, blue:58/255, alpha:1.0) ]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreCard.text = "0"
        colorChoice.backgroundColor = colorArray[choosenIndex]
        colorChoice.text = "TOUCH THIS COLOR"
        nSTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(changeColor), userInfo: nil, repeats: true)
    }
    
    @objc fileprivate func changeColor() {
        if time <= 0{
            nSTimer.invalidate()
            let alert = UIAlertController(title: "Game Over", message: "Score \(self.score)", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default)
                { action -> Void in
                    self.dismiss(animated: true, completion: { () -> Void in
                    })
                })
            self.present(alert, animated: true, completion: nil)
        } else {
            colorIndex =  Int(arc4random_uniform(UInt32(14)))
            collectionView.reloadData()
            time -= 1;
            redrawTimer()
        }
    }
    
    fileprivate func redrawTimer() {
        scoreCard.text = String(time)
        timer.counter = time
        timer.setNeedsDisplay()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recell", for: indexPath)
        if colorIndex == 15 {
           colorIndex = 0
        }
        cell.backgroundColor = colorArray[colorIndex]
        colorIndex += 1;
        cell.tag = colorIndex
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: IndexPath) -> CGSize {
        collectionView.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width + 55
        let cellSquareSize: CGFloat = screenWidth / 4.0
        return CGSize(width: cellSquareSize, height: cellSquareSize);
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 1;
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 1;
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 100, left: 10, bottom: 10, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        if (cell!.tag != choosenIndex) {
            time -= 5
            changeColor()
        } else {
            score += 1;
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
