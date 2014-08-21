//
//  FirstViewController.swift
//  My Task List
//
//  Created by jobron on 7/25/14.
//  Copyright (c) 2014 jobron. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tblTasks: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Returning to View
    override func viewWillAppear(animated: Bool) {
        tblTasks.reloadData();
    }
    
    //UITableViewDelegate
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!){
        if(editingStyle == UITableViewCellEditingStyle.Delete){
            taskMgr.tasks.removeAtIndex(indexPath.row)
            tblTasks.reloadData();
        }
    }
    
    //UITableViewResource
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
        return taskMgr.tasks.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
        
        cell.textLabel.text = taskMgr.tasks[indexPath.row].name
        cell.detailTextLabel.text = taskMgr.tasks[indexPath.row].desc
        
        return cell
    }


}

