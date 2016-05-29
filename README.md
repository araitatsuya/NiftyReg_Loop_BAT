# NiftyReg_Loop_BAT
Running NiftyReg in for-loop using Batch in Windows environment. I highly discourage you to install NiftyReg in Windows. Apparently the installation requires Framework 4.0 and older version of Visual Studio (2010?). But the current Windows system (as of May 2016 Framework 4.5) does not support the old library and keeps on rewriting to newer Framework.

#Input files
  Target Image: Ref0001.nii
  Source Images: IM0001.nii to IM0XXX.nii
  Mark: Mask0001.nii (0 and 1 on Ref0001.nii)

#Output files
  Affine Transformation: IM0XXX_aff.txt
    Quick and dirty affine transformation (principal stretch, translation, shear, and rotation) with no deformable local control.
  Warped Images: IM0XXX_warped.nii
    Warped source images; Target Image ~ Warped Image (Hopefully)
  Displacement Field: IM0XXX_def.nii
  CPP file: IM0XXX_cpp.nii


      May 29th 2016
          Tatsuya J. Arai 
