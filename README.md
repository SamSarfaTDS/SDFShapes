# SDF Shapes
This is a package of SDF shapes as .hlsl files and subgraphs for shader graph.

## Installation

Navigate to Tags -> Releases in this repo. Copy the link in of the latest release (e.g. `git@github.com:SamSarfaTDS/SDFShapes.git#v0.1.2-preview`).

In Unity, open the package manager and add a new package from Git URL. Paste the link and click install.

## Usage

### Shader files

Ensure to include the right .hlsl file in your shader:

<img width="531" height="172" alt="image" src="https://github.com/user-attachments/assets/f86f977e-0dee-44f5-99e8-6aaacf174656" />

If just using the display name of the package doesn't work, you can try the full name:

<img width="677" height="139" alt="image" src="https://github.com/user-attachments/assets/c89c092a-bc8e-4ddf-8d78-e676134e8b0c" />

Your code editor might not recognise the package, but it will compile and work as expected. Alternatively, copy the `.hlsl` file into your `Assets` folder and reference it from there.

Then call the right function in your fragment block:

<img width="539" height="109" alt="image" src="https://github.com/user-attachments/assets/d86cd76b-288c-449c-a03f-83c7fc4767ce" />

### Shader graph

In shader graph, just create a new node and search for `SDF`. You will get all the available subgraphs:

<img width="321" height="320" alt="image" src="https://github.com/user-attachments/assets/822a9a9e-c368-46c1-845c-3d061eb8479d" />

