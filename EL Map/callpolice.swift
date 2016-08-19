//
//  callpolice.swift
//  EL Map
//
//  Created by asc on 8/12/16.
//  Copyright © 2016 asc. All rights reserved.
//

import UIKit
import MessageUI

class callPolice: UIViewController, MFMessageComposeViewControllerDelegate{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func robberySend(sender: AnyObject) {
        let messageVC = MFMessageComposeViewController()
        messageVC.body = "There's a robbery that has taken place near me, or I've been robbed myself! Either way, I need help immediately! Here's what I witnessed: ";
        messageVC.recipients = ["9736193007"]
        messageVC.messageComposeDelegate = self;
        
        self.presentViewController(messageVC, animated: false, completion: nil)
    }
    
    func messageComposeViewController(controller: MFMessageComposeViewController, didFinishWithResult result: MessageComposeResult) {
        switch (result.rawValue) {
        case MessageComposeResultCancelled.rawValue:
            let alertController = UIAlertController(title: "EmLert", message:
                "The message has been cancelled.", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
            print("Message was cancelled")
            self.dismissViewControllerAnimated(true, completion: nil)
        case MessageComposeResultFailed.rawValue:
            let alertController = UIAlertController(title: "EmLert", message:
                "The message failed to send.", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
            print("Message failed")
            self.dismissViewControllerAnimated(true, completion: nil)
        case MessageComposeResultSent.rawValue:
            let alertController = UIAlertController(title: "EmLert", message:
                "The message was successfully sent.", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
            print("Message was sent")
            self.dismissViewControllerAnimated(true, completion: nil)
        default:
            break;
        }
        
    }

    @IBAction func murderSendMessage(sender: AnyObject) {
        let messageVC = MFMessageComposeViewController()
        messageVC.body = "Help! There's a dead body near me, and I believe that he or she has been murdered. Here's what I see, if I can give any information: ";
        messageVC.recipients = ["9736193007"]
        messageVC.messageComposeDelegate = self;
        
        self.presentViewController(messageVC, animated: false, completion: nil)
    }
    
    func messageComposeViewController2(controller: MFMessageComposeViewController, didFinishWithResult result: MessageComposeResult) {
        switch (result.rawValue) {
        case MessageComposeResultCancelled.rawValue:
            let alertController = UIAlertController(title: "EmLert", message:
                "The message has been cancelled.", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
            print("Message was cancelled")
            self.dismissViewControllerAnimated(true, completion: nil)
        case MessageComposeResultFailed.rawValue:
            let alertController = UIAlertController(title: "EmLert", message:
                "The message failed to send.", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
            print("Message failed")
            self.dismissViewControllerAnimated(true, completion: nil)
        case MessageComposeResultSent.rawValue:
            let alertController = UIAlertController(title: "EmLert", message:
                "The message was successfully sent.", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
            print("Message was sent")
            self.dismissViewControllerAnimated(true, completion: nil)
        default:
            break;
        }
        
    }
    

    @IBAction func susSendMessage(sender: AnyObject) {
        let messageVC = MFMessageComposeViewController()
        messageVC.body = "I'm messaging you because I suspect that someone I know may be planning to do something bad. Here's why I think so: ";
        messageVC.recipients = ["9736193007"]
        messageVC.messageComposeDelegate = self;
        
        self.presentViewController(messageVC, animated: false, completion: nil)
    }
    
    func messageComposeViewController3(controller: MFMessageComposeViewController, didFinishWithResult result: MessageComposeResult) {
        switch (result.rawValue) {
        case MessageComposeResultCancelled.rawValue:
            let alertController = UIAlertController(title: "EmLert", message:
                "The message has been cancelled.", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
            print("Message was cancelled")
            self.dismissViewControllerAnimated(true, completion: nil)
        case MessageComposeResultFailed.rawValue:
            let alertController = UIAlertController(title: "EmLert", message:
                "The message failed to send.", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
            print("Message failed")
            self.dismissViewControllerAnimated(true, completion: nil)
        case MessageComposeResultSent.rawValue:
            let alertController = UIAlertController(title: "EmLert", message:
                "The message was successfully sent.", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
            print("Message was sent")
            self.dismissViewControllerAnimated(true, completion: nil)
        default:
            break;
        }
        
    }


    
    
    
}