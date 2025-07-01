# DirectX – Texture Mapping and Sampling

This project was developed as part of the **Graphics API Programming** course at the Silesian University of Technology. The aim was to implement texture loading, mapping, and sampling in DirectX 12, using both DDS and standard image formats. The exercise focused on integrating textures into the rendering pipeline, configuring samplers, and modifying shaders for texture blending.

## Objective

- Load and bind 2D textures (DDS, PNG, JPG) in DirectX 12
- Integrate shader resource views (SRV) into the root signature
- Configure and experiment with texture samplers
- Modify HLSL shaders to use textures and blending
- Implement multi-texture blending in pixel shaders

## Technical Stack

- **API**: DirectX 12
- **Language**: C++17
- **Shaders**: HLSL (Shader Model 5.0+)
- **IDE**: Visual Studio 2019+
- **Platform**: Windows 10/11

## How to Run

1. Open the Visual Studio solution file (`*.sln`).
2. Build the project using `Ctrl+Shift+B`.
3. Run the application using `F5`.

### Controls
- **Mouse**: Rotate and zoom the scene (if inherited from previous labs)
- **Keyboard**: Switch texture sets or apply transformations (if implemented)

## Project Structure

```
├── shader.fx             # HLSL shader program
├── GeometryHelper.h      # Geometry creation with UV coordinates
├── RenderWidget.cpp      # Texture loading, SRV setup, drawing
├── System.cpp            # Application and message loop
├── Textures/             # DDS/JPG texture files
└── README.md             # Project documentation
```

## Results

<p align="center">
  <img src="https://github.com/user-attachments/assets/68228f0b-2889-4eb1-9688-248ac5d03757" alt="Textured Cube" width="400"/>
</p>

## Academic Context

This project was developed as part of laboratory exercises for the course:

> **Graphics API Programming (DirectX)**  
> Silesian University of Technology – Faculty of Automatic Control, Electronics and Computer Science  
> Supervised by: mgr inż. Aleksandra Szymczak

---

> Technical note: DirectX 12 requires manual memory management for texture loading.  
> The helper functions `CreateDDSTextureFromFile12` and `LoadTextureToBuffer()` were used to streamline the process.

## Author

**inż. Alan Pawleta**  
Silesian University of Technology  
Faculty of Automatic Control, Electronics and Computer Science
