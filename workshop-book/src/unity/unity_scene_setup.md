### General Layout

<img style="display: block; margin-left: auto; margin-right: auto;" src="unity_component.png" alt="Unity Editor Home Page">
<br/>

##### Counterclockwise...

* **Scene Panel**
    - This panel contains what scene you're on currently as well as all the game objects that that scene holds (ex: camera, light source, ground object, your player asset, obstacles).

* **File View**
    - This is where you can see all the files currently within your project. For our purposes, we only need to focus on the *Assets* folder and its sub-folders. In addition, you can also create your own folders to keep your project organized and functional.

* **Component Panel**
    - This is where you can see all the different components/parts of your selected game object. These could be things like transformation values (position, scale, and rotation), colliders (allow for collision), Rigidbody (for movement w/ physics) and many more...

* **Scene View**
    - This is where you can see your scene and how all of your assets physically look in your scene. There are two basic tabs here: the *Scene* tab and the *Game* tab. The *Scene* tab allows you to make whatever changes you want and the *Game* tab shows what your changes will look like during gameplay. In addition, you can press the play button at the top to start the gameplay at any time you like to test any changes that you have made.

</br>

### File Setup

Before we proceed, we need to make some additional changes:
- Download this tutorial's [assets.](https://drive.google.com/uc?export=download&id=1ucsgriZxbajK0LKflfUpLJHT86DQlHgI)
    - Once downloaded, place this zip file somewhere on your computer where you can access it easily.
    - Then, go to the Unity Hub. If its open, the icon for it below in the **taskbar** (for Windows) or **Dock** (for Mac) should looks something like this:
    <br/>
    <img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_87.png" alt="Unity Editor Home Page">
    <br/>
    - Click it to open the Hub.
    - On the left, in the list of menus, click **Projects**.
    - Find your project (the one you just made) in the project list.
    - On the right, click the 3 little dots.
    - Click on the first option you see.
        - For Mac, this will be **Reveal in Finder**. For Windows, this will be **Show in Explorer**.
    - This will open your project directory on your computer (wherever it was created).
    - Double-click the project folder.
    - Double-click the **Assets** folder.
        - This is where we'll place the unzipped *updated_assets*.
    <br/>

    - Now, find your zip file (wherever you stored it) and unzip it.
        - Upon unzipping, you'll see two folders: 
            - **updated_assets** and **_MACOSX**.
                - Ignore the **_MACOSX** folder.
        - Once unzipped, move (**inside your file explorer or Finder)** the unzipped updated_assets folder into the **Assets** folder in your project directory folder.
            - For this part, I would suggest having two separate windows open for File Explorer or Finder.
    - Then, navigate to your Unity Editor and, assuming you followed these steps correctly and the download link was working, you should see a folder below, in the File View, called **updated_assets**.
        - Double-click it to open it and you should see the game assets inside.
        <br/>
- Download the following packages:
    - **ProBuilder** 
        - Up top, in the Unity Editor, find the *Window* tab. 
        - Click to expand it.
        - Look for **Package Manager.**
        - Click on it and it will open a separate window for it.
            - Optional: You can drag the window and dock it next to the *Scene* and *Game* tabs in your Scene View.
        - In the window, on the left, click on *Unity Registry*.
            - You may need to expand the tabs on the left to find it:
            <br/>
            <img style="display: block; margin-left: auto; margin-right: auto;" src="./groundwork_photos/step_88.png" alt="Unity Editor Home Page">
            <br/>
        - In the search bar, start typing **ProBuilder** and you should see it in the search results below. 
        - On the right, in the package description, find the *Install* button and click it to install ProBuilder.
    - **Unity glTFast**
        - Follow the same steps as above to navigate to the Package Manager.
        - But, this time, in the top-left corner of the Package Manager window, look for a plus icon with a dropdown menu triangle next to it
            - Should look something like this:
            <img style="display: block; margin-left: auto; margin-right: auto;" src="project_manager_dropdown.png" alt="project manager dropdown button">
        - Expand the dropdown menu and find the *Install package by name...* option
        - In the textbox, paste this name: **com.unity.cloud.gltfast**
        - Click *Install* and it will install the package and show you a package description (similar to ProBuilder)
    
#### Why do we need these packages?
- **ProBuilder** will allow us to create custom shapes and obstacles to place in our scene. Once we learn how to use it, we can let our imaginations run wild!
- **Unity glTFast** will allow us to actually use .gltf files (and the asset files in the folder you downloaded up above).

