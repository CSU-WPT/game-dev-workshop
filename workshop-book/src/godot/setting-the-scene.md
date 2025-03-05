### Creating a 3D Scene
- In the scene tree, click `3D Scene` to create a 3D scene.
<img style="display: block; margin-left: auto; margin-right: auto;" src="4-1.png" alt="Selecting 3D Scene">

- Now you should have a single node in your scene called `Node3D`. This is your root node, it defines that your scene exists in 3D space and everything in it will be a child of this node.
- Double click this node to rename it, and call it `LevelOne`
- Hit "Ctrl+S" to save the scene, and hit enter when the popup appears

### Making the Map
- Right click the `LevelOne` node, and hit `Add Child Node`

<img style="display: block; margin-left: auto; margin-right: auto;" src="4-2.png" alt="Making a Child Node">

- That will create a popup window where you can choose what type of node to create, use the search bar and select another `Node3D`

<img style="display: block; margin-left: auto; margin-right: auto;" src="4-3.png" alt="Selecting the Child Node">

- Rename this new node to `Map`. Nodes can also be used like folders in a filesystem for organizational purposes. It doesn't change anything functionally about the scene, but it allows us to organize the different parts of the scene. In this case, this node will contain all the terrain.

- Under the `Map` node, add a `CSGBox3D`. This is a node type that acts as both a rendered mesh, and a collidable box, and a static physics object, whereas normally you would need seperate nodes for these things. The benifit of CSG objects is they allow you to rapidly prototype levels, but they have poor performance when you use enough for a full scale game. Nonetheless, they're perfect for a game jam.

