### Now, we'll discuss a particular tool that we downloaded a while back: 

# Probuilder

<br/>

<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_56.png" alt="Unity Editor Home Page">

1. For the Mac folks, hover over *Tools* up top, then hover over *ProBuilder* to open/view the menu
    - If you recall, earlier in the tutorial, we downloaded two packages: Unity glTFast and **Probuilder**.
    - **ProBuilder** allows us to create shapes of different sizes and patterns. 
        - You might say, "Ok. So what?"
        - Well, these shapes, no matter what size you make them in, will have their own colliders and renderers (there is a slight caveat here that we'll discuss later)
<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_57.png" alt="Unity Editor Home Page">

2. Let's create a spike pit!
    - To start, let's create a *Cube*
        - In the *ProBuilder* menu, hover over *Editors* and find the *Create Shape* menu
        - Within that menu, click on *Cube* to enter build mode

<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_59.png" alt="Unity Editor Home Page">

3. Click and drag, in build mode, to see a grid pop up.
    - This grid represents the base of our shape (a cube, in this case). As you hold down the left-click, you can drag that shape to whatever dimensions you want to size our base
        - For this tutorial, ensure that your base is somewhat of an **rectangle** which is longer on the **z-axis** than the **y-axis**
            - Think of a football field
            - If its not perfect, don't worry! We can resize its transformation values with numbers later
<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_60.png" alt="Unity Editor Home Page">

4. Once you've decided on the proportions of your base, let go of *left-click*
    - Now, move your cursor up and you should see the shape "rise up".
        - What you're seeing is a *preview* of what the final shape will look like
        - Once you've chosen your desired height, press *left-click* once to finalize the shape
<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_61.png" alt="Unity Editor Home Page">

5. Now, if we want to edit the shape (if we didn't size it the correct way, let's say), we can do that by:
    - Opening the *ProBuilder* menu from the *Tools* menu up above.
    - Inside the *ProBuilder* menu, this time, hover your cursor over **Edit**
    - In the menu that follows, click **Edit Shape**
        - You will enter back into *build mode* (the same mode you were in when you were first creating the shape)
        - One thing to remember: to change the *scale* parameters (i.e., size), you **MUST** do it from the **Shape Settings** menu and not the *Component View* on the right.  
    - Now, in the **Shape Settings** menu, change the *Size* parameters to the following values:
        - X --> 14
        - Leave Y as is
        - Z --> 22
<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_62.png" alt="Unity Editor Home Page">

6. Now, we need to change this rectangle into a pit (i.e. a concave rectangle with thick walls)
    - We'll do this by **Extrusion** and **Edge Loops**
    - To begin, find the above icon in the vertical bar on the left of the *Scene View*
        - This icon will only be visible if you have selected a shape created using ProBuilder
    
<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_63.png" alt="Unity Editor Home Page">

7. Along the top row of icons, you'll find these 3 icons as well (with the same color)
    - From left to right:
        - **Vertex Selection** = Allows you to select individual vertices and use them to change your shape however you want
        - **Edge Selection** = Allows you to select edges and use them to change your shape
        - **Face Selection** = Allows you to select faces to change 
        your shape
<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_64.png" alt="Unity Editor Home Page">

8. Click on the *Edge Selection* icon to get started 
    - You should all the edges turn dark black and when you hover, they should change colors.
        - Pick an edge (I'll start with the one that's selected in the image)
        - Right-click with the edge selected to open a menu
        - In that menu, find **Insert Edge Loop**
            - Here, you'll also see a shortcut to invoke this option. I suggest you use this shortcut because we'll be making a couple of these
<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_65.png" alt="Unity Editor Home Page">

9. Once you click **Insert Edge Loop**...
    - ProBuilder will introduce a new edge **perpendicular** to the one you selected. 
        - I double-click on the *Scene* to make the scene full-screen.
<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_65.png" alt="Unity Editor Home Page">

10. Once you click **Insert Edge Loop**...
    - ProBuilder will introduce a new edge **perpendicular** to the one you selected. 
        - I double-click on the *Scene* to make the scene full-screen.
<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_66.png" alt="Unity Editor Home Page">

11. Drag the edge over to the right
    - You want to space it a given distance from the rightmost edge (the original rightmost edge) and keep that distance consistent for the edge on the opposite side (when we place it)
        - This ensures that our walls have an even thickness
            - No need to make it perfect. Eyeballing will work just fine. Just keep them relatively consistent without any large differences.
<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_67.png" alt="Unity Editor Home Page">

12. Now, let's select one of the longer edges (like the one shown in the image) 
    - Right-click to open the menu and click **Insert Edge Loop**
    - With the newly created edge, drag it down towards the *original* bottom edge
        - Orient the camera however you need to place this edge just right (whatever that is for you)
<br/>

#### Now, repeat the previous two steps to place the remaining two edges. The final product should look something like this

<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_68.png" alt="Unity Editor Home Page">
<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_69.png" alt="Unity Editor Home Page">

13. Now, select the middle face (the biggest face) by switching to the **Face Selection** tool. We will now **extrude**

- Why did we do this?
    - Placing these additional edges allowed us to create additional faces on top of an existing face.
    - We can then select any one face (or multiple faces) and **extrude** (i.e. cave inwards or pull outwards), whichever we need to do.
<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_70.png" alt="Unity Editor Home Page">

14. With the face selected, *right-click* to open the menu again and find **Extrude Faces**
<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_71.png" alt="Unity Editor Home Page">

15. Now, **drag** the face down to extrude it (in this case, cave inwards)
    - Once done, press `Esc` to exit ProBuilder
<br/>


#### Now, we have our pit ready. Next, we need to fill it with spikes
<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_72.png" alt="Unity Editor Home Page">

16. Drag and drop the **spike** asset into the scene from the *updated_assets* folder.
<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_73.png" alt="Unity Editor Home Page">

17. Make a row of spikes
    - We can do this by selecting a spike and pressing `Ctrl` + `C` then `Ctrl` + `V`
    - Doing so makes a copy of the selected asset
        - Note: the copy will be placed in **EXACTLY** the same position as the original. So, you need to drag it out to separate it from the original
    - Create 4 more copies so that we have a row of 5 spikes (like the one in the image)
<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_75.png" alt="Unity Editor Home Page">

18. Next, we need to group our spikes together so that we can edit the entire row as a whole
    - To do so, *Right-click* in the *File System* (where we can see all of our assets) and find the **Create Empty** option
        - Name the empty asset *spike_row_1*
        - This will create a blank folder (that acts as an asset)
    - Into this folder, drag all of the spike assets.
<br/>


<img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_74.png" alt="Unity Editor Home Page">

19. Here's where it gets a bit complicated:
    - You now need to use the **Scale Tool** (which is the 5th one from the top in the menu to the left in the image above)
    - Using this tool, scale the size of the row such that it fits inside of the walls of the pit without clipping through the walls or the ground
        - This will take some trial-and-error and not everyone will have the same amount of work to do.
<br/>

