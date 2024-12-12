For some unknown reason, and depending on the version of VMD, when merging pdb/psf files containing COSAN structures as provided in this repository with other pdb/psf with the "merge" tool of VMD 
sometimes the coordinates of the cobalt atoms are set to zero in the merged pdb file. 
The FORTRAN code provided here corrects these issues automatically. 
