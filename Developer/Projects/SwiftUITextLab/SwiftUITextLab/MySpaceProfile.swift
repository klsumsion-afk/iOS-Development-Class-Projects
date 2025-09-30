//
//  MySpaceProfile.swift
//  SwiftUITextLab
//
//  Created by Jane Madsen on 9/10/25.
//

import SwiftUI

/*
 ## Instructions:
 Your goal is to create an app that will serve as social media profile. Use Text view modifiers to arrange and style your profile to reflect your unique style.
 
 Since this assignment will require you to choose custom fonts, you may want to open the Font Book app installed on your Mac, where you can view a list of the fonts available on Mac and iOS by default.
 
 If you would like to change the background color of each of these views, you can do so by changing the colors listed in each #Preview macro at the bottom of the page.
 
 1. Create three structs that conform to View: ProfileView, TopFiveFriendsView, and BlogPostView. This will fix the errors
 2. To see a preview of how each view will look in the app, make sure you have opened your canvas (Option + Command + Return). You can view each struct you've created by clicking on the tabs at the top of the canvas.
 3. Create a profile view with Text elements for each of the following items: Username, Real Name, Home City, and Bio. Style each of them appropriately with custom fonts, font sizes, and colors for each. Feel free to add any additional modifiers as well.
 4. Create a TopFiveFriends view with a list of your friends, ranked in order of favorite to least favorite. (Don't worry, we won't tell them). Use a different font and color for each person, and include an Emoji to represent each one as well.
 5. Create a BlogPostView. Write a long blog post. Give your blog post a title, a date posted, a body, and a display of number of likes and comments. Once again, style each individually with fonts, font sizes, and colors, and any other modifiers you would like.
 6. Try running the app. You should see all three views embedded in Tabs (the code for this is in SwiftUITextLabApp.swift). You may need to adjust the style slightly to accommodate the Tab Bar at the bottom of the screen.
 
 ## Black Diamond
 
 7. Add one or more Image views to each page.
 8. Use Stack views to arrange your content more dynamically.
 
 ## Rubric
 
 - App has a profile view with Username, Real Name, Home City, and Bio, appropriately filled out and styled.
 - App has a Top Five Friends screen with emoji, fonts, and colors for each friend.
 - App has a blog post view with a title, a date posted, a body, and a number of likes and comments. All are styled, sized, and colored appropriately.
 */
struct ProfileView: View {
    var body: some View {
        VStack {
            Text("Username: klsumsion-afk")
                .font(.custom("Arial", size: 36))
                .foregroundStyle(.purple)
            Text("Name: Karigan Sumsion")
                .font(.custom("Avenir", size: 35))
                .foregroundStyle(.blue)
            Text("City: American Fork")
                .font(.custom("Baskerville", size: 34))
                .foregroundStyle(.red)
            Text("Some random human who loves dragons and dinosaurs.")
                .font(.custom("Bodoni 72", size: 33))
                .foregroundStyle(.green)
        }
    }
}

struct TopFiveFriendsView: View {
    var body: some View {
        Text("Emma 🦡")
            .font(.custom("Party LET", size: 90))
            .foregroundStyle(.green)
        Text("Amber 🦌")
            .font(.custom("Snell Roundhand", size: 70))
            .foregroundStyle(.purple)
        Text("Ben 🦦")
            .font(.custom("Impact", size: 70))
            .foregroundStyle(.blue)
        Text("NaVia 🦩")
            .font(.custom("Papyrus", size: 70))
            .foregroundStyle(.red)
        Text("Clem 🐜")
            .font(.custom("American Typewriter", size: 70))
            .foregroundStyle(.orange)
    }
}

struct BlogPostView: View {
    var body: some View {
        Text("Title")
            .font(.custom("Optima", size: 50))
            .underline()
            .foregroundStyle(.orange)
        Text("Hello, this is Karigan. Welcom to my social media post. There is nothing I wish to say. Goodbye.")
            .font(.custom("American Typewriter", size: 49))
            .foregroundStyle(.green)
        Text("Sep. 23rd, 2025")
            .font(.custom("Optima", size: 30))
            .foregroundStyle(.yellow)
        Text("💚 51")
            .font(.custom("American Typewriter", size: 25))
            .foregroundStyle(.pink)
        Text("💬 3")
            .font(.custom("American Typewriter", size: 25))
            .foregroundStyle(.cyan)
    }
}

#Preview("ProfileView") {
    ProfileView()
        .background(.white)
}

#Preview("TopFiveFriendsView") {
    TopFiveFriendsView()
        .background(.white)
}

#Preview("BlogPostView") {
    BlogPostView()
        .background(.white)
}
