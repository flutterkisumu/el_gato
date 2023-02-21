# Contribution guide

#### If you don't have git on your machine, [install it](https://help.github.com/articles/set-up-git/).

## 1.Fork this repository

Fork this repository by clicking on the fork button on the top of this page.
This will create a copy of this repository in your account.

## 2.Clone the repository

Now clone the forked repository to your machine. Go to your GitHub account, open the forked repository, click on the code button and then click the _copy to clipboard_ icon.

Open a terminal and run the following git command:

```
git clone "url you just copied"
```

where "url you just copied" (without the quotation marks) is the url to this repository (your fork of this project). See the previous steps to obtain the url.



For example:

```
git clone https://github.com/flutterkisumu/el_gato.git
```


## 3.Create a branch

Change to the repository directory on your computer (if you are not already there):

```
cd project-name
```

Now create a branch using the `git switch` command:

```
git switch -c your-new-branch-name
```

For example:

```
git switch -c add-ui-changes
```

## 4.Make necessary changes you want to code and commit those changes

If you go to the project directory and execute the command `git status`, you'll see there are changes.

Add those changes to the branch you just created using the `git add` command:

```
git add .
```

Now commit those changes using the `git commit` command:

```
git commit -m "Made -this and this change"
```


## 5.Push changes to GitHub

Push your changes using the command `git push`:

```
git push origin -u your-branch-name
```

replacing `your-branch-name` with the name of the branch you created earlier.



## 6.Submit your changes for review

If you go to your repository on GitHub, you'll see a `Compare & pull request` button. Click on that button.



Now submit the pull request - with a description of the changes you have made

Soon your changes will be reviewed and merged into the main branch of this project. You will get a notification email once the changes have been merged.

Don't forget to star the repo 🤩 




