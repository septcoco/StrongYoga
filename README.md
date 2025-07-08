# PharoYoga
> Find your center, one ASCII character at a time.

**PharoYoga** is a completely impractical, largely unusable, and deeply esoteric yoga pose library written in **Pharo**, a modern dialect of the Smalltalk programming language. It is designed for fun, not for actual use.

This project was originally intended for Strongtalk, but that environment proved to be lost to the sands of time. We pivoted to Pharo to keep the esoteric spirit alive in a system that actually runs on modern computers.

## Features
- Coded in a pure object-oriented language from the 1980s.
- Gloriously inaccessible to the average developer.
- Zero dependencies (if you don't count the entire Pharo virtual machine).
- Displays poses with names, descriptions, and ASCII art.
- Can select a random pose for spontaneous enlightenment.

## How to Run This Abomination

Running this requires you to enter the strange and wonderful world of a "live coding" environment. You don't "compile" this like a normal program; you load it into a running Pharo "image".

**Prerequisites:** A Mac and a sense of adventure.

#### Step 1: Get Pharo

1.  Go to the official Pharo downloads page: **[https://pharo.org/download](https://pharo.org/download)**
2.  Select the **macOS** tab.
3.  Download the **64-bit** version. This will download a `.zip` file.
4.  Unzip the file. This will create a folder containing the Pharo application. You can move this folder anywhere you like (e.g., your Applications folder).

#### Step 2: Prepare the Environment

1.  Open the Pharo application inside the folder you just unzipped. macOS might warn you it's from an "unidentified developer". **Right-click** the Pharo app icon and select **Open** to run it the first time.
2.  A window will appear. This is the Pharo "image". Click anywhere inside it to open the main World Menu.
3.  From the menu, select `Tools` -> `Transcript`. A new window will open. This is where your output will appear.
4.  From the menu again, select `Tools` -> `Playground`. This is the new "Workspace" where you will run code.

#### Step 3: Load the Yoga Library

1.  Open the `StrongYoga.st` file from this repository in any text editor.
2.  Select and copy the *entire contents* of the file.
3.  Go to the `Playground` window in Pharo and paste the code.
4.  Select all the code you just pasted (`Cmd+A`), then **right-click** and choose **Do it (d)**. The code will execute and install your classes into the environment.

#### Step 4: Run the Program

1.  Delete the installation code from the `Playground`.
2.  Copy and paste the following script into the now-empty `Playground`:

    ```smalltalk
    "--- SCRIPT TO RUN THE YOGA LIBRARY ---"

    | myYogaLibrary |
    myYogaLibrary := YogaPoseLibrary new.
    myYogaLibrary populateWithDefaultPoses.
    myYogaLibrary listAllPoseNames.
    (myYogaLibrary findPoseNamed: 'Downward-Facing Dog') displayOnTranscript.
    myYogaLibrary showRandomPose.
    ```
5.  Select all the code in the `Playground` (`Cmd+A`), **right-click**, and choose **Do it (d)**.

#### Step 5: Find Your Zen

Look at the **Transcript** window. You should see the beautifully formatted, ASCII-art-enhanced output of your yoga library. Namaste.

## License
This project is released into the public domain. Do with it what you will.