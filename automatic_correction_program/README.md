# FORTRAN Correction program
## Description

For some unknown reason, and depending on the version of VMD, when merging pdb/psf files containing COSAN structures as provided in this repository with other pdb/psf with the "merge" tool of VMD 
sometimes the coordinates of the cobalt atoms are set to zero in the merged pdb file (the merged psf file is always OK). 
The FORTRAN code provided here corrects these issues automatically. 

The names of the files must be specified inside the fortran code as follows:

- Please replace 'merged_file.pdb' with the name of your pdb file with the merged structure
- Please replace 'original_cosan_structure.pdb' with the name of the pdb file with COSAN that you merged with another structure
