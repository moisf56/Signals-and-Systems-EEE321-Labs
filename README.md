# EEE321 - Signals and Systems
**Bilkent University - Electrical and Electronics Engineering Department**

A comprehensive repository containing all laboratory assignments and coursework for the Signals and Systems course.

## 📚 Course Information
- **Course Code:** EEE 321
- **Course Title:** Signals and Systems
- **Institution:** Bilkent University
- **Department:** Electrical and Electronics Engineering
- **Student:** Mohammed Abed (21903608)
- **Academic Year:** 2023-2024

## 📁 Repository Structure

```
EEE321-Signals-Systems/
├── README.md
├── .gitignore
├── docs/
│   └── course-syllabus.md
├── lab-01/
│   ├── README.md
│   ├── report/
│   │   ├── Lab1_Report.pdf (if available)
│   │   └── Lab_1.pdf (assignment)
│   └── results/
│       └── (basic MATLAB exercises)
├── lab-02/
│   ├── README.md
│   ├── report/
│   │   ├── Lab2_MohammedAbed.pdf
│   │   └── Lab_21.pdf (assignment)
│   ├── code/
│   │   └── SUMCS.m
│   └── results/
│       └── (figures and outputs)
├── lab-03/
│   ├── README.md
│   ├── report/
│   │   ├── Lab3_MohammedAbed.pdf
│   │   └── Lab_3_Fall_20232024.pdf (assignment)
│   ├── code/
│   │   ├── DTMFTRA.m
│   │   ├── FT.m
│   │   └── IFT.m
│   ├── audio/
│   │   └── (recorded speech files)
│   └── results/
│       └── (frequency domain plots)
├── lab-04/
│   ├── README.md
│   ├── report/
│   │   ├── Lab4_MohammedAbed.pdf
│   │   └── Graded_Lab_4.pdf (assignment)
│   ├── code/
│   │   ├── DSLSI2D.m
│   │   ├── ReadMyImage.m
│   │   └── DisplayMyImage.m
│   ├── images/
│   │   └── (BMP images for processing)
│   └── results/
│       └── (processed images)
├── lab-05/
│   ├── README.md
│   ├── report/
│   │   ├── Lab5_Report.pdf (if available)
│   │   └── Lab_5.pdf (assignment)
│   ├── code/
│   │   ├── generateInterp.m
│   │   └── DtoA.m
│   └── results/
│       └── (interpolation plots and comparisons)
├── lab-06/
│   ├── README.md
│   ├── report/
│   │   └── Lab6Mohammed_Abed.pdf
│   ├── code/
│   │   └── DTLTI.m
│   └── results/
│       └── (system response plots)
└── utils/
    ├── DisplayMyImage.m
    └── FSWave.m
    └── FSWave.m
    └── FT.m
    └── generateInterpol.m
    └── IFT.m
    └── ReadMyImage.m
    └── SUMCS.m
```

## 🧪 Lab Assignments Overview

### Lab 1: MATLAB Fundamentals and Programming Logic
- **Status:** ✅ Assignment Available
- **Topics:** 
  - Vector-based programming in MATLAB
  - Performance measurement (tic/toc commands)
  - Array operations and matrix manipulations
  - Basic MATLAB syntax and efficiency optimization

### Lab 2: Complex Exponentials and Superposition
- **Status:** ✅ Complete
- **Topics:** 
  - Linear combination of complex exponentials
  - MATLAB function implementation for signal synthesis
  - Complex signal generation and visualization
  - Mathematical analysis of superposition principle
- **Key Functions:** `SUMCS.m`

### Lab 3: DTMF Signals and Echo Cancellation
- **Status:** ✅ Complete
- **Topics:**
  - Dual Tone Multi Frequency (DTMF) signal generation
  - Speech recording and digital signal processing
  - Echo simulation using convolution operations
  - Fourier domain analysis and filtering techniques
- **Key Functions:** `DTMFTRA.m`, `FT.m`, `IFT.m`
- **Audio Sample:** 10-second speech recording for echo processing

### Lab 4: 2D Signal Processing and Image Convolution
- **Status:** ✅ Complete
- **Topics:**
  - 2D discrete convolution implementation
  - Grayscale image processing fundamentals
  - Digital image filtering and enhancement
  - Two-dimensional discrete systems analysis
- **Key Functions:** `DSLSI2D.m`, `ReadMyImage.m`, `DisplayMyImage.m`

### Lab 5: Signal Interpolation and Reconstruction
- **Status:** ✅ Assignment Available
- **Topics:**
  - Zero-order, linear, and ideal interpolation methods
  - Digital-to-analog conversion simulation
  - Signal reconstruction from discrete samples
  - Comparative analysis of interpolation techniques
- **Key Functions:** `generateInterp.m`, `DtoA.m`

### Lab 6: Discrete-Time LTI Systems
- **Status:** ✅ Complete
- **Topics:**
  - Discrete-time Linear Time-Invariant system implementation
  - Difference equation solutions and system analysis
  - Filter design and frequency response characterization
  - Digital filter implementation (Band-pass filter example)
- **Key Functions:** `DTLTI.m`

## 🔧 Key MATLAB Functions (Utils Folder)

| Function | Lab | Purpose | Description |
|----------|-----|---------|-------------|
| `SUMCS.m` | Lab 2 | Complex exponential superposition | Computes linear combination of M complex exponentials |
| `DTMFTRA.m` | Lab 3 | DTMF signal generation | Creates dual-tone multi-frequency transmission signals |
| `FT.m` | Lab 3 | Fourier Transform | Implements discrete Fourier transform for signal analysis |
| `IFT.m` | Lab 3 | Inverse Fourier Transform | Implements inverse discrete Fourier transform |
| `DSLSI2D.m` | Lab 4 | 2D convolution | Performs 2D discrete convolution for image processing |
| `ReadMyImage.m` | Lab 4 | Image input | Reads and converts color images to grayscale |
| `DisplayMyImage.m` | Lab 4 | Image display | Displays processed images with proper formatting |
| `generateInterp.m` | Lab 5 | Interpolation function generator | Creates zero-order, linear, or ideal interpolation functions |
| `DtoA.m` | Lab 5 | Digital-to-analog conversion | Simulates D/A conversion using various interpolation methods |
| `DTLTI.m` | Lab 6 | LTI system implementation | Implements discrete-time linear time-invariant systems |

## 🚀 Getting Started

### Prerequisites
- MATLAB R2020a or later
- Signal Processing Toolbox
- Image Processing Toolbox (for Lab 4)
- Audio System Toolbox (for Lab 3)

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/[username]/EEE321-Signals-Systems.git
   cd EEE321-Signals-Systems
   ```

2. Open MATLAB and navigate to the repository directory

3. Add all subdirectories to MATLAB path:
   ```matlab
   addpath(genpath('.'))
   ```

### Usage
Each lab can be run independently. Navigate to the specific lab directory and refer to the individual lab README files for detailed instructions.

**Example - Running Lab 2:**
```matlab
cd lab-02/code
% Define parameters
t = 0:0.01:2;
A = [1, 0.5, 2];
omega = [2*pi, 4*pi, 6*pi];

% Generate complex exponential superposition
xs = SUMCS(t, A, omega);

% Plot results
figure;
plot(t, real(xs), 'b-', t, imag(xs), 'r--');
legend('Real Part', 'Imaginary Part');
title('Complex Exponential Superposition');
```

## 📊 Lab Results and Achievements

- **Lab 1:** Mastered MATLAB fundamentals and optimization techniques
- **Lab 2:** Successfully implemented complex exponential synthesis
- **Lab 3:** Created working DTMF system and echo cancellation algorithm
- **Lab 4:** Developed 2D image processing capabilities with custom convolution
- **Lab 5:** Implemented and compared multiple interpolation methods
- **Lab 6:** Designed and analyzed discrete-time LTI systems including filter design

## 📈 Key Learning Outcomes

1. **Signal Analysis:** Comprehensive understanding of continuous and discrete-time signals
2. **System Design:** Implementation of linear time-invariant systems
3. **Fourier Analysis:** Practical application of frequency domain techniques
4. **Digital Signal Processing:** Hands-on experience with MATLAB-based DSP
5. **Image Processing:** Introduction to 2D signal processing applications
6. **Filter Design:** Digital filter implementation and analysis

## 🔬 Technical Specifications

- **Sampling Rates:** Primarily 8192 Hz for audio processing
- **Image Formats:** BMP files for 2D processing (512×512 matrices)
- **Programming Environment:** MATLAB with custom function development
- **Mathematical Foundations:** Linear algebra, complex analysis, Fourier transforms

## 📚 Documentation

Each lab folder contains:
- Individual `README.md` with specific instructions
- Complete assignment PDFs with theoretical background
- Detailed lab reports with results and analysis
- Well-commented MATLAB code with proper documentation

## Academic Integrity

This repository contains coursework completed for academic purposes at Bilkent University. The code and reports are provided for educational reference. Please respect academic integrity policies and use this material responsibly.

## Contact Information

- **Student:** Mohammed Abed
- **Student ID:** 21903608
- **Institution:** Bilkent University
- **Department:** Electrical and Electronics Engineering

## 📝 License

This project is created for educational purposes as part of the EEE321 course at Bilkent University.

---

**Last Updated:** [Current Date]  
**MATLAB Version:** R2020a+  
**Course Completion:** 2023-2024 Academic Year
