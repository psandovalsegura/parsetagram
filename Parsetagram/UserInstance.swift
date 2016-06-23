//
//  UserInstance.swift
//  Parsetagram
//
//  Created by Pedro Sandoval Segura on 6/22/16.
//  Copyright © 2016 Pedro Sandoval Segura. All rights reserved.
//

import Foundation
import Parse
import UIKit

public class UserInstance {
    public static var SUCCESSFUL_ID = false //Testing purposes
    
    public static var CURRENT_USER: PFUser!
    public static var USERNAME: String!
    public static var POSTS_COUNT: Int!
    public static var FOLLWER_COUNT: Int!
    public static var JOIN_DATE: String!
    public static var PROFILE_PICTURE: UIImage!
    
    public static var POSTS: [PFObject]!
    
    
    
    /* Modification of PFUser object to add more key-value pairs - an implementation of ParseUser.swift
     * Used during sign-up
     *
     * @param user: a PFUser object
     *
     */
    
    static func createUser(newUser: PFUser) {
        // Add relevant fields to the object
        newUser["author"] = PFUser.currentUser() // Pointer column type that points to PFUser
        newUser["postsCount"] = 0
        newUser["followerCount"] = 0
        
        //Add a key to keep track of all the post objects
        newUser["allPosts"] = [PFObject]()
        
        //Add username
        let usernameString = newUser["author"].username!!
        newUser["username"] = usernameString
        
        //Add user join Date and Time
        newUser["formattedDateString"] = TimeAid.getFormattedDate()
        
        //Add default profile picture as PFFile?
        newUser["profilePicture"] = loadDefaultProfileImageFile()
        
        //Save the object (following function will save the object to Parse asynchronously)
        newUser.saveInBackgroundWithBlock { (success: Bool, error: NSError?) in
            if success {
                //The modified PFUser has been saved
                CURRENT_USER = newUser
                loadUserProperties()
            } else {
                //There was a problem, check error.description
            }
        }
    }
    
    
    /* Modification of PFUser object to add more key-value pairs - an implementation of ParseUser.swift
     * Used during log-in, or when user is already logged in
     *
     *
     * @param user: a PFUser object
     *
     */
    
    static func loadUser(user: PFUser) {
        CURRENT_USER = user
        loadUserProperties()
    }
    
    
    /* Put all properties specific to the user in constants for easy access
     * Used in sign-up, log-in, and when user is already logged in
     *
     */
    static func loadUserProperties() {
        //Prevent loading properties multiple times
        if (SUCCESSFUL_ID) { return }
        
        USERNAME = CURRENT_USER["username"] as! String
        POSTS_COUNT = CURRENT_USER["postsCount"] as! Int
        FOLLWER_COUNT = CURRENT_USER["followerCount"] as! Int
        JOIN_DATE = CURRENT_USER["formattedDateString"] as! String
        
        //Get a UIImage from a PFFile? object
        let imagePFFile = CURRENT_USER["profilePicture"] as! PFFile
        imagePFFile.getDataInBackgroundWithBlock({
            (imageData: NSData?, error: NSError?) -> Void in
            if error == nil {
                if let imageData = imageData {
                    PROFILE_PICTURE = UIImage(data:imageData)
                }
            }
        }) //End getDataInBackgroundWithBlock()
        
        POSTS = CURRENT_USER["allPosts"] as! [PFObject]
        
    }
    
    /* Load a default profile image from Assets.xcassets
     * Used in sign-up
     *
     */
    static func loadDefaultProfileImageFile() -> PFFile? {
        let defaultImage = UIImage(named: "mepng")
        let file = Post.getPFFileFromImage(defaultImage)
        return file
    }
    
    
    
    /* ---------------------------PFUser object modification methods are below-------------------------------- */
    
    static func addPost() {
        //add to array, increment count, save, call loadUserProperties, consider using fetch()
        
    }
    
    static func addFollower() {
        //make structure?, increment, save, call loadUserProperties
        
    }
    
    static func changeProfilePicture() {
        
    }
}