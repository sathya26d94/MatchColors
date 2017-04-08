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
    var nSTimer: NSTimer!
    var colorIndex: Int = 0
    var score: Int = 0
    var choosenIndex: Int = 1
    var time: Int = 30
    var colorArray: [ UIColor ] = {
        return [UIColor.redColor(),UIColor.yellowColor(),UIColor.magentaColor(),UIColor.greenColor(),UIColor.cyanColor(),UIColor.blueColor(),UIColor.blackColor(),UIColor.grayColor(),UIColor.darkGrayColor(),UIColor.lightGrayColor(),UIColor.whiteColor(),UIColor.orangeColor(),UIColor.brownColor(),UIColor.purpleColor(),UIColor(colorLiteralRed:28/255, green:45/255, blue:58/255, alpha:1.0) ]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreCard.text = "0"
        colorChoice.backgroundColor = colorArray[choosenIndex]
        colorChoice.text = "TOUCH THIS COLOR"
        nSTimer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("changeColor"), userInfo: nil, repeats: true)
    }
    
    private func changeColor() {
        if time <= 0{
            nSTimer.invalidate()
            let alert = UIAlertController(title: "Game Over", message: "Score \(self.score)", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default)
                { action -> Void in
                    self.dismissViewControllerAnimated(true, completion: { () -> Void in
                    })
                })
            self.presentViewController(alert, animated: true, completion: nil)
        } else {
            colorIndex =  Int(arc4random_uniform(UInt32(14)))
            collectionView.reloadData()
            time--;
            redrawTimer()
        }
    }
    
    private func redrawTimer() {
        scoreCard.text = String(time)
        timer.counter = time
        timer.setNeedsDisplay()
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("recell", forIndexPath: indexPath)
        if colorIndex == 15 {
           colorIndex = 0
        }
        cell.backgroundColor = colorArray[colorIndex++]
        cell.tag = colorIndex
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        collectionView.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        let screenSize = UIScreen.mainScreen().bounds
        let screenWidth = screenSize.width + 55
        let cellSquareSize: CGFloat = screenWidth / 4.0
        return CGSizeMake(cellSquareSize, cellSquareSize);
        
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 1;
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 1;
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 100, left: 10, bottom: 10, right: 10)
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let cell = collectionView.cellForItemAtIndexPath(indexPath)
        if (cell!.tag != choosenIndex) {
            time -= 5
            changeColor()
        } else {
            score++;
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
