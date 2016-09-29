![](https://raw.githubusercontent.com/acarango/stat159_fall2016_proj1/master/images/stat159-logo.png)
#Discussion

###1. bash
To make this project, I had to begin by creating a file structure to work in. For this I used bash, which is a Unix shell and command language. This 'shell' is essentially an interface which allows me to interact with the 'kernel' which does the actual computing. Through the terminal on my laptop I used some basic bash commands to create the file structure for the project (shown below).

```
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
```

I started by creating all the directories. This was accomplished using the `mkdir` command. Typing `mkdir` followed by a directory name of your choice creates a directory. 

It was essential to be able to move between directories in order to create subdirectories and edit files within these subdirectories. The `cd`  command allows us to do this.`cd` alone puts you in your home directory. `cd dir` moves you into a subdirectory.`cd ..` moves you up a directory. You can also use relative and absolute paths with `cd`. There are more tricky ways to use `cd`, but the above commands are all you really need to get the job done. 

Once the directories were all sorted out, I used the command `touch FILE...` to create all of the text files. Then, I used nano to edit all the text files, including all markdown files, the readme, the makefile and the gitignore. The bash command ```nano FILE...``` causes nano to boot up and lets you begin editing the text file. After editing, use ```^O``` to save the content and then ```^X``` to exit nano.

In my opinion, nano is useful because it is easy to call up through bash. It works just fine for short bits of text, such as this project's Makefile (which I will discuss later). However I found it poor for writing long segments of text, so for the essay itself I used MacDown and simply copied into nano when I wanted to save changes.      

Moving, deleting, and concatenating files also proved useful for this project. The syntax for these are:

```
rm [OPTION]... FILE...

mv [options] source dest

cat FILES... > FILE...
```

The first two commands came into play when I made errors such as creating a file in the wrong directory or accidently creating a superfluous file. `mv` was especially useful for moving the image files which I downloaded from the class GutHub repository into my project file structure. `mv` and `cat` came into use in my makefile, but we will consider that later.

With the above commands I was able to create the file structure for this project. Although it took some quick and relearning of commands I forgot, I was able to complete this step within two hours without requiring help.

###2. Markdown
![](https://raw.githubusercontent.com/acarango/stat159_fall2016_proj1/master/images/markdown-logo.png)

For writing the essay itself I used Markdown, which is a lightweight markup language. Markdown has a very simple syntax, and Markdown documents can be created easily in any basic text editor. Essentially, Markdown is a very easy tool for creating good looking documents that can be converted to many formats.

Some useful syntax that came into play in this project include:

* Placing a `#` before a phrase will make it a header. Adding more poundsigns (up to six) makes the header smaller.
* Using `***` in its own line creates horizontal rules.
* Using `*` makes bullet points for lists just like this one!
*  `![](url)` adds the photo from the given url to the document.
* Surrounding text in `` changes it into inline code.   

These five pieces of Markdown syntax were all I really needed to write this essay, although there is more syntax that can come into use for more computational and data-centered work. Markdown proved to be very easy to use on this project, and it seems to me this is exactly what the creators intended. Afterall, it is called a "lightweight" markup language because it is user friendly. Moreover the program MacDown made it even easier for me, because of its great user-interface. With a text editor on the left, and a visualisation of what the rendered document would look like on the right, I was able to correct mistakes easily. Whenever I wanted to edit the text files within the project I copied the text from MacDown into nano. The process of writing took the most time of all, but I would say it was the smoothest part of the project, and formatting via Markdown was extremely quick and easy. 

###3. Git and GitHub
![](https://raw.githubusercontent.com/acarango/stat159_fall2016_proj1/master/images/git-logo.png)
![](https://raw.githubusercontent.com/acarango/stat159_fall2016_proj1/master/images/github-logo.png)

Git and Github came into play during the writing process mainly as a way of saving edits safeley and with the option of reverting to older versions. I'd like to talk about them at the same time because they were used in tandem during the making of this project.

Git is a type of version control software. This means git helps us keep track of the changes we make in a project. Git allows us to start with an original document, then save individual changes we make to the document during the development process. With Git, one can easily cycle through past incarnations of a document and choose which edits to keep and which to discard. When used correctly, this prevents people from losing important parts of their work. It also makes finding older versions of files less stressful.

Using Git locally works fine when someone is working alone. However, when collaboration comes into the picture, using a remote repository on the web becomes necessary. GitHub is a hosting service created specifically for Git which allows groups of contributors to work on remote repositories. GitHub users can connect a local repository to a GitHub repository. Once this is done they can "push" content from their local repository to GitHub and "pull" content from GitHub to their local repository. 

Let's go through how I used Git and GitHub on this project:

* First of all I had to get Git running in the root directory of my project. This was accomplished with the bash command `git init`. 
* Then I created a GitHub repository with the same name as my project's root directory `stat159_fall2016_proj1`. You need to set up an account before doing this if you don't already have one.
* To connect the remote repository to my local repository I used the commands `git remote add origin url` `git remote -v` and `git push -u origin master`. Once these commands are executed the local and remote repositories are connected.
* When I wanted to make an edit on a file, for example adding another section to one of the Markdown files, I would do so locally then use the commands `git add FILE...` `git commit -m "message"` and `git push` in sequence. 
* If interested in looking at my history of commits, I used `git log` which shows the project history. `git status` was useful for checking if I had made an error during the process of committing and pushing an edit.

I encountered difficulty connecting my local and remote repositories for this project, having never used Git before. I made an error connecting the repositories which caused there to be a readme file in the remote repository but not in the local repository. When attempting my first commit, I was presented with an error. After seeking help from the class GSI, I learned that the simple remedy to pull from the remote repository. After this I had no issues using Git and it proved quite easy to use.

###5. GNU Make and Pandoc
![](https://raw.githubusercontent.com/acarango/stat159_fall2016_proj1/master/images/pandoc-logo.png)

Once I was satisfied with the essay, it was time to "glue everything together" so to speak and create a final product. I accomplished this by using GNU Make and Pandoc in tandem. GNU Make is a piece of software known as a build automation tool, which automates the process of creating non-source material from source material. Essentially, Make lets us define our own command `make` through a textfile called `Makefile`. The `make` command can do many different things depending on what we put in the makefile, but the goal in this project was to concatenate the sections of the essay together and then convert to html. Pandoc is a program that can convert documents between a wide array of formats, so I used it in my makefile in order to convert from markdown to html.  

Here is what the contents of my makefile look like:

```
.PHONY: all clean

all: paper.md paper.html

paper.md: paper/sections/*.md
        cd paper/sections; cat *.md > paper.md
        cd paper/sections; mv paper.md ../

paper.html: paper/paper.md
        cd paper; pandoc paper.md -s -o paper.html

clean:
        rm -f paper.html paper.md
```

`paper.md` and `paper.html` are called file targets, and `paper/sections/*.md` and `paper/paper.md` are called dependencies. A file target is the file to be made and a dependency is an already existing file or group of files that will be used to make the target. Below the target and dependencies are bash commands that will create the target file. Notice that I had to use paths to define my dependecies and I had to use `cd` within the commands. This is because the makefile was in the root directory and the dependencies were located in subdirectories. Also, notice that I used the wildcard `*` to select all the .md files in the sections directory rather than name each file individually. 

In addition to file targets we have the special target `.PHONY` as well as two phony targets `all` and `clean`, which unlike the default targets are not associated with files. `.PHONY` is simply used to distinguish a target as phony. There are many applications for phony targets, but in this project I used them for very basic functions. `all` has the two file targets as dependencies. This means when we run `make` it runs both target programs. The `make` command automatically runs the first target's program only, so if we want to run any other targets program we must add the target's name after `make`. The target `clean` has no dependencies and simply deletes `paper.html` and `paper.md`. Remember to use `make clean` if you want to do this, since the first target in the makefile is `all`.

As for Pandoc, its usage in this project is very simple. I used the command `pandoc paper.md -s -o paper.html` The option `-s` gives us a standalone output, and the `-o` option gives us a file as an output. You can see that the first file in the command is the file to be converted and the second is the file with a new extension of our choice. Pandoc will recognize this and convert the file to the correct format. 

Learning the basics of Make was, to me, the most conceptually challenging part of creating this project. Specifically, it was difficult for me to conceptuallize targets and dependencies. The fact that the makefile for this project is very simple alleviated much of my confusion however. It only took me about an hour to grasp Make in the context of this project and feel confident in its usage.  

