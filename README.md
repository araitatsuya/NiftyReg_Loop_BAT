# NiftyReg_Loop_BAT
Running NiftyReg in for-loop using Batch in Windows environment. 

Though, I highly discourage you to install NiftyReg in Windows. Apparently the installation requires Framework 4.0 and older version of Visual Studio (2010?). But the current Windows system (as of May 2016 Framework 4.5) does not support the old library and keeps on rewriting to newer Framework.

If you want to try...

https://sourceforge.net/p/niftyreg/discussion/1010498/thread/dc79c7b6/

# Use NiftyReg_Loop.bat

There are XXX source/moving 2D images to be registered onto the reference/target 2D image around the specific area specified by a mask.   

1. Specify the path to the directory where all input .nii files are stored. 

                cd C:\

2. Run NiftyRef_Loop.bat using command window (cmd)
3. Type the number of loops.

#Input files

  Target Image: Ref0001.nii
  
  Source Images: IM0001.nii to IM0XXX.nii
  
  Mark: Mask0001.nii (0 and 1 on Ref0001.nii)
  

#Output files

  Affine Transformation: IM0XXX_aff.txt.
    Quick and dirty affine transformation (principal stretch, translation, shear, and rotation) with no deformable local control.
    
  Warped Images: IM0XXX_warped.nii.
    Warped source images; Target Image ~ Warped Image (Hopefully)
    
  Displacement Field: IM0XXX_def.nii.
  
  CPP file: IM0XXX_cpp.nii.
  
# See Also
https://github.com/araitatsuya/NiftyReg_Loop_Bash
  
# NiftyReg
Personally, my favorite deformable image registration software developed by a group of scientists at University College London, United Kingdom. 

https://sourceforge.net/projects/niftyreg/

# Reference
---------
LICENSE
---------
Copyright (c) 2009, University College London, United-Kingdom. All rights reserved.

---------
CONTACT
---------
For any comment, please, feel free to contact Marc Modat (m.modat@ucl.ac.uk).
https://sourceforge.net/p/niftyreg/git/ci/master/tree/

      May 29th 2016
          Tatsuya J. Arai 
