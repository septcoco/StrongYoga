# StrongYoga
> Find your center, one ASCII character at a time.

**StrongYoga** is a completely impractical, largely unusable, and deeply esoteric yoga pose library written in **Strongtalk**, a niche dialect of Smalltalk. It is designed for fun, not for actual use.

It runs in a terminal-like window within the Strongtalk environment and displays yoga poses using beautiful, hand-crafted ASCII art.



## Features
- Coded in a rare, historically significant programming language.
- Gloriously inaccessible to the average developer.
- Zero dependencies (if you don't count the entire Strongtalk virtual machine).
- Displays poses with names, descriptions, and ASCII art.
- Can select a random pose for spontaneous enlightenment.

## How to Run This Abomination

Running this requires a journey back in time. You don't "compile" this like a normal program; you load it into a running Strongtalk "image".

**Prerequisites:** A Mac and a sense of adventure.

#### Step 1: Get Strongtalk

1.  Go to the [Strongtalk GitHub Releases page](https://github.com/strongtalk/strongtalk/releases).
2.  Download the latest `.dmg` file for macOS (e.g., `strongtalk-0.2.2.dmg`).
3.  Open the `.dmg` and drag the `Strongtalk` application to your Applications folder.
4.  **Important:** The first time you open it, macOS will complain that it's from an "unidentified developer". To get around this, **right-click** the Strongtalk app icon and select **Open**. You will only need to do this once.

#### Step 2: Prepare the Environment

1.  Launch the Strongtalk application.
2.  From the menu bar at the top of your screen, open the two essential tools:
    - `Tools` -> `Workspace` (This is where you'll type commands).
    - `Tools` -> `Transcript` (This is where the output will appear).
3.  Arrange the two windows so you can see both.

#### Step 3: Load the Yoga Library

1.  Open the `StrongYoga.st` file from this repository in any text editor (like VS Code).
2.  Select and copy the *entire contents* of the file.
3.  Go to the `Workspace` window in Strongtalk and paste the code.
4.  Select all the code you just pasted (Cmd+A), then **right-click** and choose **do it**. This compiles the library into the environment. The `Workspace` will flash, and the code is now "installed".

#### Step 4: Run the Program

1.  Delete the installation code from the `Workspace`.
2.  Copy and paste the following script into the now-empty `Workspace`:

    ```smalltalk
    "--- SCRIPT TO RUN THE YOGA LIBRARY ---"

    | myYogaLibrary |
    myYogaLibrary := YogaPoseLibrary new.
    myYogaLibrary populateWithDefaultPoses.
    myYogaLibrary listAllPoseNames.
    (myYogaLibrary findPoseNamed: 'Downward-Facing Dog') displayOnTranscript.
    myYogaLibrary showRandomPose.
    ```
3.  Select all the code in the `Workspace` (Cmd+A), **right-click**, and choose **do it**.

#### Step 5: Find Your Zen

Look at the **Transcript** window. You should see the beautifully formatted, ASCII-art-enhanced output of your yoga library. Namaste.

## License
This project is released into the public domain. Do with it what you will.