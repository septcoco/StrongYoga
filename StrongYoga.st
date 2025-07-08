"
================================================================
StrongYoga - An Esoteric Yoga Library in Strongtalk
Version 0.1
================================================================
To install, open a Workspace in a Strongtalk image,
paste the entire contents of this file, select all,
and 'do it' (right-click -> do it).
"

"--- Part 1: The YogaPose Class ---"
Object subclass: #YogaPose
    instanceVariableNames: 'name sanskritName description difficulty asciiArt'
    classVariableNames: ''
    poolDictionaries: ''
    category: 'Esoteric-Yoga'.

!YogaPose methodsFor: 'accessing'!
name
    ^name
!
name: aString
    name := aString
!
sanskritName
    ^sanskritName
!
sanskritName: aString
    sanskritName := aString
!
description
    ^description
!
description: aString
    description := aString
!
difficulty
    ^difficulty
!
difficulty: aSymbol
    difficulty := aSymbol
!
asciiArt
    ^asciiArt
!
asciiArt: aString
    asciiArt := aString
!!

!YogaPose methodsFor: 'displaying'!
displayOnTranscript
    "Displays the full pose details to the system Transcript."
    Transcript show: '--- ', self name, ' (', self sanskritName, ') ---'; cr.
    Transcript show: 'Difficulty: ', self difficulty; cr.
    Transcript show: 'Description: ', self description; cr; cr.
    Transcript show: 'Take a deep breath and assume the position:'; cr; cr.
    Transcript show: self asciiArt; cr; cr.
    Transcript show: '---------------------------------------------------'; cr; cr.
!!

"--- Part 2: The YogaPoseLibrary Class ---"
Object subclass: #YogaPoseLibrary
    instanceVariableNames: 'poses'
    classVariableNames: ''
    poolDictionaries: ''
    category: 'Esoteric-Yoga'.

!YogaPoseLibrary methodsFor: 'initializing'!
initialize
    super initialize.
    poses := Dictionary new.
!!

!YogaPoseLibrary methodsFor: 'management'!
addPose: aPose
    poses at: aPose name put: aPose
!
findPoseNamed: aString
    ^poses at: aString ifAbsent: [
        Transcript show: 'Pose not found: ', aString; cr.
        nil
    ]
!
listAllPoseNames
    Transcript show: '=== Available Poses in the Library ==='; cr.
    poses keys asSortedCollection do: [ :eachName |
        Transcript show: ' * '; show: eachName; cr.
    ].
    Transcript cr.
!
showRandomPose
    | randomPose |
    poses isEmpty ifTrue: [
        Transcript show: 'The library is empty. Please populate it first.'.
        ^self
    ].
    randomPose := poses at: poses keys anyOne.
    randomPose displayOnTranscript.
!!

!YogaPoseLibrary methodsFor: 'populating'!
populateWithDefaultPoses
    "Creates a few default poses and adds them to the library."
    | pose |

    Transcript show: 'Populating the ancient library with yogic knowledge...'; cr.

    "Warrior II"
    pose := YogaPose new.
    pose name: 'Warrior II'.
    pose sanskritName: 'Virabhadrasana II'.
    pose difficulty: #Intermediate.
    pose description: 'A powerful standing pose that builds strength in the legs and core, and opens the hips and chest.'.
    pose asciiArt:
'      o
     /|\
    / | \
   o--+--o
     / \
    /   \
   /     \
  L       \'.
    self addPose: pose.

    "Tree Pose"
    pose := YogaPose new.
    pose name: 'Tree Pose'.
    pose sanskritName: 'Vrikshasana'.
    pose difficulty: #Beginner.
    pose description: 'A foundational balancing pose that improves focus, stability, and strengthens the legs and ankles.'.
    pose asciiArt:
'     o
    \|/
     |
    /|
   / |
    /|
   / L
  /
 /'.
    self addPose: pose.

    "Downward-Facing Dog"
    pose := YogaPose new.
    pose name: 'Downward-Facing Dog'.
    pose sanskritName: 'Adho Mukha Svanasana'.
    pose difficulty: #Beginner.
    pose description: 'An all-body stretch that rejuvenates and energizes. Forms an inverted V-shape with the body.'.
    pose asciiArt:
'  o
 /#--__
/    --\
L     L'.
    self addPose: pose.

    Transcript show: '...Population complete. Namaste.'; cr; cr.
!!

"--- End of File-In ---"