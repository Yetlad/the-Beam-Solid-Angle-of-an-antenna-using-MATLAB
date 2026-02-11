##  Beam Solid Angle Calculation

This script calculates the **Beam Solid Angle ($\Omega_A$)** in steradians for a given antenna radiation pattern.

###  Methodology
The program performs a double numerical summation over the surface of a sphere:
1.  **Grid Generation**: Creates a $(\theta, \phi)$ mesh based on user bounds.
2.  **Power Pattern**: Converts the field pattern $E$ to power pattern $P_n = |E|^2$.
3.  **Integration**: Computes $\sum \sum P_n(\theta, \phi) \sin(\theta) \Delta\theta \Delta\phi$.

###  Test Case: Cosine Pattern
* **Input**: $E(\theta, \phi) = \cos(\theta)$
* **Theta Range**: $0^\circ$ to $90^\circ$
* **Phi Range**: $0^\circ$ to $360^\circ$
* **Result**: **2.10 Steradians**
