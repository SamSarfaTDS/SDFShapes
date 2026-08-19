# SDF Shapes
This is a package of SDF shapes as .hlsl files and subgraphs for shader graph.

## Installation

Navigate to Tags -> Releases in this repo. Copy the link in of the latest release (e.g. `git@github.com:SamSarfaTDS/SDFShapes.git#v0.1.2-preview`).

In Unity, open the package manager and add a new package from Git URL. Paste the link and click install.

## Usage

### Shader files

Ensure to include the right .hlsl file in your shader:

<img width="531" height="172" alt="image" src="https://github.com/user-attachments/assets/f86f977e-0dee-44f5-99e8-6aaacf174656" />

Then call the right function in your fragment block:

<img width="539" height="109" alt="image" src="https://github.com/user-attachments/assets/d86cd76b-288c-449c-a03f-83c7fc4767ce" />

### Shader graph

In shader graph, just create a new node and search for `SDF`. You will get all the available subgraphs:

<img width="357" height="339" alt="image" src="https://github.com/user-attachments/assets/622a619b-58fd-43a2-bb49-3346d06c9b97" />


