# Project 3 - *Parsetagram*

**Parsetagram** is a photo sharing app using Parse as its backend.

Time spent: **37** hours spent in total

Submitted by: **Pedro Sandoval Segura**

## User Stories

The following **required** functionality is completed:

- [x] User can sign up to create a new account using Parse authentication
- [x] User can log in and log out of his or her account
- [x] The current signed in user is persisted across app restarts
- [x] User can take a photo, add a caption, and post it to "Instagram"
- [x] User can view the last 20 posts submitted to "Instagram"
- [x] User can pull to refresh the last 20 posts submitted to "Instagram"
- [x] User can load more posts once he or she reaches the bottom of the feed using infinite Scrolling
- [x] User can tap a post to view post details, including timestamp and creation
- [x] User can use a tab bar to switch between all "Instagram" posts and posts published only by the user.

The following **optional** features are implemented:

- [x] Show the username and creation time for each post
- [x] After the user submits a new post, show a progress HUD while the post is being uploaded to Parse.
- [x] User Profiles:
   - [x] Allow the logged in user to add a profile photo
   - [x] Display the profile photo with each post
   - [ ] Tapping on a post's username or profile photo goes to that user's profile page
- [x] User can comment on a post and see all comments for each post in the post details screen.
- [x] User can like a post and see number of likes for each post in the post details screen.
- [x] Run your app on your phone and use the camera to take the photo


The following **additional** features are implemented:

- [x] UIAlertController notifies users of invalid passwords, taken usernames, etc.
   - [x] Alerts also notify regarding profile picture changes and log out actions
- [x] Refresh control displays last updated timestamp on post table views
- [x] Comment messages are timestamped down to the second, minute, hour, and day
- [x] Custom home screen app icon

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. Custom classes for controller, views, cells, etc. and how to know if it's a reuse identifier or storyboard ID that is necessary for certain UI items
2.

## Video Walkthrough

Here's a walkthrough of implemented user stories:

The video walkthrough can be found here: https://youtu.be/K72qJxXyiVY

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Credits

List an 3rd party libraries, icons, graphics, or other assets you used in your app.

- [AFNetworking](https://github.com/AFNetworking/AFNetworking) - networking task library


## Notes

Describe any challenges encountered while building the app.

## License

    Copyright [2016] [Pedro Sandoval Segura]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
