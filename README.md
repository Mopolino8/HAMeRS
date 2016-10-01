# README #

### What is this repository for? ###

HAMeRS (High-performance Adaptive Mesh Refinement Solver) is a compressible Navier-Stokes/Euler solver with the AMR (Adaptive Mesh Refinement) technique. The parallelization of the code and all the construction, management and storage of cells are facilitated by the SAMRAI (Structured Adaptive Mesh Refinement Application Infrastructure) library from the Lawrence Livermore National Lab (computation.llnl.gov/project/SAMRAI/).

The code consists of the families of explicit high-order WCNS (Weighted Compact Nonlinear Scheme) finite difference shock-capturing schemes for simulating shock waves, material interfaces, and turbulent features. The AMR algorithm implemented is based on the one developed by Berger et al. The figure below summarizes the algorithm:
![AMR_flowchart2.png](https://bytebucket.org/manlong/hamers/raw/dc21e991731efca6714a268f0c1a3f2b9ab7e804/AMR_flowchart.jpg?token=b698e47d1e1817e484059aa1faf6e4784e4f89c4 =250x)

### How do I get set up? ###

Git is used for the version control of the code. To install Git on Debian-based distribution like Ubuntu, try apt-get:

$ sudo apt-get install git-all

To code can be downloaded from the repository by:

$ git clone https://yourname@bitbucket.org/yourname/hamers.git


To compile the code, in general all you need is to use cmake and then make. For example:

$ mkdir build

$ cd build

$ cmake ..

$ make


To run the code, you need to provide the input file:

$ src/exec/main <input filename>


To restart a simulation, you need to provide restart directory and restore number in addition to the input file:

$ src/exec/main <input filename> <restart dir> <restore number>


To run the code in parallel, you need OpenMPI/MPI. You can try mpirun:

$ mpirun -np <number of processors> src/exec/main <input filename>


### Who do I talk to? ###

The code is managed by Man Long, Wong of the FPAL (Flow Physics and Aeroacoustics Laboratory) at Stanford University. If you have any questions, please feel free to contact Man Long at wongml@stanford.edu.