![](https://raw.githubusercontent.com/acarango/stat159_fall2016_proj1/master/images/stat159-logo.png)
#Discussion

###1. bash
To make this project, I had to begin by creating a file structure to work in. This meant I had to use bash, which is a Unix shell and command language. This 'shell' is essentially the interface which allows me to interact with the 'kernel' which does the actual computing. Through the terminal on my laptop I was able to create the file structure for this project (shown below) using some simple bash commands.

`
stat159-fall2016-project1/
    .gitignore
    README.md
    Makefile
    paper/
        sections/
            00-abstract.md
            01-introduction.md
            02-discussion.md
            03-conclusions.md
        paper.md
        paper.html
    images/
        git-logo.png
        github-logo.png
        markdown-logo.png
        pandoc-logo.png
        stat159-logo.png
`
Typing `mkdir` followed by a directory name creates a directory. 

It is essential to be able to move between directories. The `cd`  command allows us to do this.`cd` alone puts you in your home directory. `cd dir` moves you into a subdirectory.`cd ..` moves you up a directory. You can also use relative and absolute paths with `cd`. This is by no means conprehensive, but it is all you need to move among the directories without trouble. 

Once the directories were all sorted out, I used the command `touch FILE...` to create all of the text files. Then, I used nano to edit all the text files, including all markdown files, the readme, the makefile and the gitignore. The bash command ```nano FILE...``` causes nano to boot up and lets you begin editing the text file. After editing, use ```^O``` to save the content and then ```^X``` to exit nano.

In my opinion, nano is useful because it is easy to call up through bash. It works just fine for short bits of text, such as in this project's Makefile (which I will discuss later). However I found it poor for writing long segments of text, so for the essay itself I used other more sightly text editors and simply copied into nano when I wanted to save changes.      

Moving and deleting files also proved useful for this project. The syntax for these are:

```
rm [OPTION]... FILE...

mv [options] source dest
```
These commands came into play when I made errors such as creating a file in the wrong directory or accidently creating a superfluous file. `mv` was especially useful for moving the image files which I downloaded from the class GutHub repository into my project file structure.

With the above commands I was able to create the file structure for this project. Although it took some relearning of commands I forgot, I was able to complete this step within two hours without requiring help from someone else. Some more bash commands came into use to create the final product, but they are used within other tools I have yet to discuss so we'll save them for later.

###2. Markdown
![](https://raw.githubusercontent.com/acarango/stat159_fall2016_proj1/master/images/markdown-logo.png)

For writing the essay itself I used Markdown, which is a lightweight markup language. Markdown has a very simple syntax, and Markdown documents can be created easily in any basic text editor. Essentially, Markdown is a very easy tool for creating good looking documents that can be converted to many formats.

Some useful syntax that came into play in this project include:

* Placing a `#` before a phrase will make it a header. Adding more poundsigns (up to six) makes the header smaller.
* Using `*` makes bullet points for lists just like this one!
*  `![](url)` is used to put photos in the document.
* Surrounding text in `` allows you to make inline code.   

These four pieces of Markdown syntax were all I really needed to write this essay, although there is more syntax that can come into use for more computational and data-centered work. Markdown proved to be very easy to use on this project, and it seems to me this is exactly what the creators intended. Afterall, it is called a "lightweight" markup language because it is user friendly. Moreover the program MacDown made it even easier for me, because of its great user-interface. With a text editor on the left, and a visualisation of what the rendered document would look like on the right, I was able to correct mistakes easily. Whenever I wanted to change the text files within the project I copied the text from MacDown into nano. The process of writing took the most time of all, but I would say it was the smoothest part of the project, and formatting via Markdown was extremely quick and easy. 

###3. Git and GitHub
![](https://raw.githubusercontent.com/acarango/stat159_fall2016_proj1/master/images/git-logo.png)
![](https://raw.githubusercontent.com/acarango/stat159_fall2016_proj1/master/images/github-logo.png)

Git and Github came into play during the writing process mainly as a way of saving edits safeley and with the option of reverting to older versions. I'd like to talk about them at the same time because they were used in tandem during the making of this project.

Git is a type of version control software. This means git helps us keep track of the changes we make in a project. Git allows us to start with an original document, then save individual changes we make to the document during the development process. With Git, one can easily cycle through past incarnations of a document and choose which edits to keep and which to discard. When used correctly, this prevents people from losing important parts of their work and makes creating and editing content less stressful.

Using Git locally works fine when someone is working alone. However, when collaboration comes into the picture, using a remote repository on the web becomes necessary. GitHub is a hosting service created specifically for Git which allows groups of contributors to work on remote repositories. GitHub users can connect a local repository to a GitHub repository. Once this is done they can 'push' content from their local repository to GitHub and 'pull' content from GitHub to their local repository. 

Let's go through how I used Git and GitHub on this project:

* First of all I had to get Git running in the root directory of my project. This was accomplished with the bash command `git init`. 
* Then I created a GitHub repository with the same name as my project's root directory `stat159_fall2016_proj1`. You need to set up an account before doing this if you don't already have one.
* To connect the remote repository to my local repository I used the commands `git remote add origin url` `git remote -v` and `git push -u origin master`. Once these commands are executed the local and remote repositories are connected.
* When I wanted to make an edit on a file I would do so locally then use the commands `git add FILE...` `git commit -m "message"` and `git push`. 
* If interested in looking at my history of commits, I used `git log` which is shows us the project history. `git status` was useful for checking if I had made an error attempting to commit and push an edit.

###5. GNU Make

Once we have a complete project, it is time to 'wrap everything up' so to speak and create a final product. Make, which is a piece of software known as a build automation tool, allows us to generate a polished final product from our source files. Moreover, Make helps us create an easily reproducible workflow. This is accomplished by writing a textfile called 'Makefile'. 

###6. Pandoc
![](https://raw.githubusercontent.com/acarango/stat159_fall2016_proj1/master/images/pandoc-logo.png)

The way we get our final .html file does not only include make. We need a program that can convert our markdown file into a .html, and in other cases a .tex or .docx or .pdf etc. Pandoc allows us to convert between a wide array of formats so we can work in Markdown and have a final product in whatever format suits us.  
