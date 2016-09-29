![](https://raw.githubusercontent.com/acarango/stat159_fall2016_proj1/master/images/stat159-logo.png)
#Discussion

###1. bash
To make this project, I had to begin by creating a file structure to work in. This meant I had to use bash, which is a Unix shell and command language. This 'shell' is essentially the interface which allows me to interact with the 'kernel' which does the actual computing. Through the terminal on my laptop I was able to create the file structure for this project (shown below) using some simple bash commands.

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
Typing ```mkdir``` followed by a directory name creates a directory. 

It is essential to be able to move between directories. The ```cd```  command allows us to do this.```cd``` alone puts you in your home directory. ```cd dir``` moves you into a subdirectory.```cd ..``` moves you up a directory. You can also use relative and absolute paths with ``cd``. This is by no means conprehensive, but it is all you need to move among the directories without trouble. 

Moving and deleting files also proved essential for this project. The syntax for these are:

```
rm [OPTION]... FILE...

mv [options] source dest
```

I used nano, a simple text editor, to write all the text files, including all markdown files, the readme, the makefile and the gitignore. The command ```nano FILE...``` causes nano to boot up and either create the file or open it depending on whether it already exists. After adding/editing, use ```^O``` to save the content and then ```^X``` to exit nano. 

Some more bash commands came into use later on in the project but the above were all I needed to get the filestructure set up and start working on the essay itself.

###2. Markdown
![](https://raw.githubusercontent.com/acarango/stat159_fall2016_proj1/master/images/markdown-logo.png)

As you can see, the first tool we are going to look at is Markdown, which is a lightweight markup language. Markdown has a very simple syntax, and Markdown documents can be created easily in any basic text editor. Furthermore, Markdown documents can easily be converted into many formats. Basically what this means is Markdown is a very easy tool for creating good looking, adaptable documents. As a matter of fact, this essay is written in Markdown. 

###3. Git
![](https://raw.githubusercontent.com/acarango/stat159_fall2016_proj1/master/images/git-logo.png)

Now let's take a look at git, which is a type of version control software. This means git helps us keep track of the changes we make in a project. Git allows us to start with an original document, then save individual changes we make to this document during the development process. With git, one can easily cycle through past incarnations of a document and choose which edits to keep and which to discard. When used correctly, this prevents people from losing important parts of their work and makes creating and editing content less stressful.

###4. Github
![](https://raw.githubusercontent.com/acarango/stat159_fall2016_proj1/master/images/github-logo.png)

Seeing as we just finished with git, let's discuss GitHub. When working individually, using a local repository is satisfactory. However, when collaboration inevitably comes into the picture, using a remote repository on the web becomes necessary. GitHub is a hosting service created specifically for git which allows groups of contributors to work on remote repositories. GitHub users can connect a local repository to a GitHub repository. Once this is done they can 'push' content from their local repository to GitHub and 'pull' content from GitHub to their local repository. 

###5. GNU Make

Once we have a complete project, it is time to 'wrap everything up' so to speak and create a final product. Make, which is a piece of software known as a build automation tool, allows us to generate a polished final product from our source files. Moreover, Make helps us create an easily reproducible workflow. This is accomplished by writing a textfile called 'Makefile'. 

###6. Pandoc
![](https://raw.githubusercontent.com/acarango/stat159_fall2016_proj1/master/images/pandoc-logo.png)

The way we get our final .html file does not only include make. We need a program that can convert our markdown file into a .html, and in other cases a .tex or .docx or .pdf etc. Pandoc allows us to convert between a wide array of formats so we can work in Markdown and have a final product in whatever format suits us.  
