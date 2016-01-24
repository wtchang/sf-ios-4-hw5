# Week 5 Assignment: Delegation

Complete all TODOs in the provided app. The provided app contains the scaffolding of a functional app that allows the user to add items to a list. Your job is to add the components of delegation to allow the Add Item screen to ask the Items List screen to save data.

## Goals of Project
* Understand how delegation works in iOS apps
* Pass data between screens in both directions (prepareForSegue, delegate)
* Update a table view after its initial load

## Project Requirements
1. Add a protocol inside AddItemViewController that outlines the job of saving new data.
2. Add a variable inside AddItemViewController to hold a reference to the class that will be doing the delegated work.
3. Call the function on the delegate at the appropriate point in AddItemViewController (think about when it's the right time to save data).
4. Adopt the protocol in ItemsTableViewController.
5. Conform to the protocol in ItemsTableViewController. You will need to add the new item to the array of items that powers the table view, and remember to reload the table view so that it refreshes to show the new data.
6. In ItemsTableViewController's prepareForSegue method, pass a reference of self to the destination view controller.
7. Finally, in AddItemViewController, remember to pop the current view controller from the navigationController's stack when it is no longer needed.

## Deliverables
Assignment (code, resources, project file) posted on Github

## Timeline
Due Date: Wednesday, January 27.

## Suggested Ways to Get Started
* Review the [lesson slides for protocols & delegates](https://github.com/ga-students/sf-ios-4/blob/master/resources/slides/lesson-10.pdf)
* Look around the project and familiarize yourself with the storyboard including all screens and any outlets and actions.
* Add comments inside the code for where you'll want to implement the steps above.

## Evaluation
Your assignment will be evaluated regarding the extent to which you meet the above requirements using our usual rubric.