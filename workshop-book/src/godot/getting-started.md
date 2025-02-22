# Getting Started

### Downloading the Engine
1. Go to [godotengine.org](https://www.godotengine.org)
2. Click "Download Latest"
3. Click the blue "Godot Engine" button
4. Unzip the downloaded file, and run the program (the one without "console" in the file name)

### Making a Project
- Now that the window program is open, hit the `Create` button, give your project a name, location, and set the renderer to `Forward+`, then hit `Create & Edit`

### Learning the Layout
<img style="display: block; margin-left: auto; margin-right: auto;" src="image1.png" alt="Godot UI">

There are a few major parts of the UI here, let's go through them one by one:

- Scene tree - This is the top left window, it contains a heirarchical representation of every node in the scene (we'll go over what nodes are later)
- Filesystem - This is the botton left window, it contains all the files in your project
- Properties editor - This is the window on the right, if you have a node selected in the scene tree, it will show all the properties of that node for you to edit
- Scene viewer - This is the large pane in the middle, it has four modes, `2D`, `3D`, `Script`, and `AssetLib`. `2D` Allows you to view and edit the 2D component of the scene (this can be a menu, a 2D game, or a GUI on top of the 3D game). `3D` allows you to view and edit the 3D component of the scene. `Script` opens the script editor and allows you to write code in GDScript (you will need an external program if you choose to use a different language). And `AssetLib` allows you to download community assets and plugins to give you access to more features.

[Let's start making a game!](./making-a-game.md)