### Input Configuration

- For this tutorial, we will be using the new Unity Input system.
- Those w/ prior Unity experience may still know how inputs were taken from the user before the addition of the new system (done mostly within code)

<br/>

- However, with the new system, we can easily configure different actions for our player asset with custom made action maps and key bindings (you can even configure controllers!)


##### Let's get started!

<br/>

1. Navigate out of the assets folder (if you're following along from the previous page).
<br/>

<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_6.png" alt="Unity Editor Home Page">

2. Right-click, hover over *Create* and scroll down until you see *Input Actions*. Click it to create a new Input Actions Asset. 
    - I named mine "Player_Control" but you can name it whatever you want.


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_7.png" alt="Unity Editor Home Page">

3. On the right, click *Assign as the Project-wide Input Actions*. This ensures that our inputs stay consistent and that we don't run into any unexpected errors.


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_7.png" alt="Unity Editor Home Page">

4. On the right, click *Assign as the Project-wide Input Actions*. This ensures that our inputs stay consistent and that we don't run into any unexpected errors.

<br/>

Now, double-click to open it in a separate window and dock it next to the *Scene* and *Game* view.

<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_8.png" alt="Unity Editor Home Page">

5. On the left, create a new action map called *Player* by clicking the plus icon

    - An action map is essentially a container that holds bindings (either for a keyboard or for a controller). Once established, this action map (and its associated bindings) can be assigned to whatever asset we want (like **jearl_backwards**).
<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_10.png" alt="Unity Editor Home Page">

6. On the right panel, change the action type to **Value**. 
    - The reason is because, conventionally, movement in games is always done by pressing and holding a button (i.e. it generates a *continuous* value like "WWWWWWWWW..." for forward movement) unlike jumping, for example, where we press once and don't hold.
    - The game engine (and our script) will read that continuous string of W's, interpret it to mean forward movement and, consequently, move our player forward so long as it keeps getting those continuous W's.
        - It's not exactly like this but hopefully you get the idea 😁
<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_11.png" alt="Unity Editor Home Page">

7. In the additional dropdown menu that is spawned underneath *Action Type*, change *Control Type* to **Vector 2**.

    - This is because our movement is only in 2 directions (the x-axis and the z-axis). This is unlike Creative Mode in Minecraft, for example, where we can freely move in any direction.
        - We will move in the y-axis (via jumping) but **not** with continuous movement.
<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_12.png" alt="Unity Editor Home Page">

8. Find the plus icon next to *Movement* (in the center panel). Click it and then, in the dropdown menu, click *Add Up/Down/Left/Right Composite*
    - This will automatically create placeholders for 4 movement bindings (WASD) and bind/aggregate them into a single Vector 2 vector. 
        - I haven't tried it but you could try manually creating each key binding (without the composite). However, you will have to aggregate them yourself in your script. 
        - Using the composite, therefore, will result in less headaches and a cleaner setup.
<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_13.png" alt="Unity Editor Home Page">

9. Expand the newly created *2D Vector* dropdown to show the 4 empty bindings. 
    - Now, for each binding: 
        - Click on it in the center panel
        - On the right, open the *Path* dropdown.
        - Here, either search for the key to bind or click the *Listen* button and press the key you'd wish to bind and it will pop up in the dropdown below. 
        - Click your desired key to attach it to the *Up* binding.
        - Repeat for all 4 bindings. 
<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_14.png" alt="Unity Editor Home Page">

10. Up top, in the right corner, click *Save Asset* to save changes.
<br/>


<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_15.png" alt="Unity Editor Home Page">

10. Let's navigate back to the Scene View.
    - Click on **jearl_backwards** in the scene view itself (or in the scene panel on the right)
    - In the component panel on the right, we will add a **Player Input** component to attach our newly made action map and key bindings to our player asset
        - In the search bar, start typing **Player Input** and you'll see it below.
        - Click it to add it to the **jearl_backwards** asset.
    - Notice that Unity will automatically assign our custom-made Input Actions asset here.
        - The *Actions* attribute will be the *Player_Control* Input Actions asset (which, you can see, is visible below in our assets folder)
        - The *Default Map* attribute will be the *Player* binding map (which we just made).
<br/>


#### Now, it's time to put all this together in a C# script.

<br/>

#### But, now we need to set up our code editors.

- For my Mac folks, we are gonna have to use [**Visual Studio Code**](./IDE_setup/VSCode.md).
- For my Windows folks, you guys are free to choose between VS Code and [**Visual Studio**](./IDE_setup/Visual_Studio.md) (the purple one). 

#### For this tutorial, as a Mac user, I will use VS Code. But, you guys are free to use whatever is most convenient for you. 


<br/>

<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_16.png" alt="Unity Editor Home Page">

11. Click on **jearl_backwards**
    - In its component panel, at the bottom, click *Add Component*
    - In the search bar, start typing *New Script* 
        - You should see the option shown in the image above.

<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_17.png" alt="Unity Editor Home Page">

12. Name the script something like *Player_Movement*. Then, click Create and Add. This will create the script and add it as a component to this object (jearl_backwards)

<br/>

#### Now, when you double-click the script (inside the script component), assuming you set up your respective IDE correctly, it should automatically open the script in said IDE. For me, in VSCode, it looks something like this:

<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_18.png" alt="Unity Editor Home Page">


#### Let's write some code to allow player movement!


13. In the Update function, type *MovePlayer()* (we'll define this function later).
    - This function, as per the description of the Update() function, will run every single frame of the gameplay (which is what we want)


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_19.png" alt="Unity Editor Home Page">

12. Add three variables before Start() but inside our main method:
    - *public float speed*
        - This will dictate, well, the speed of our movement (we will be able to set the value of this variable inside our editor before hitting the play button as it is **public**)
    - *public Vector2 move*
        - If you remember from earlier, our movement (inside our action map) is strictly in 2 directions (that's what we want). We limited our key bindings to Vector2. 
        - Thus, when we read our player's movements, they will be in a **2D vector** and will be placed inside an onject of type **Vector2**
    - *public Vector3 movement*
        - Since our game world is a **3D space**, we need to translate our 2-dimensional movement into a 3D vector w/ the y-axis (straight up) set to 0.
            - Bonus question: why would we set the y-axis to 0 in our 3D vector?

<br/>








