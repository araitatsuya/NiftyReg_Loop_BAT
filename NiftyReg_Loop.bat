@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
REM Run NiftyReg in for-loop using Batch

REM Set the working directory
REM e.g.
REM cd C:\Users\123456\Desktop\Nifty_files
cd C:\

set /p STOP_LOOP= "How many nifty files do you want to process?: "

REM Source/Moving Images IM0001 -> IM0999
set SUBJ= IM

REM Target/Reference Image
set REF= Ref0001.nii

REM MASK 
set RMASK= Mask0001.nii

for /l %%G in (1,1,%STOP_LOOP%) do (
	REM Display Forloop step 
	echo forloop step %%G
	REM Create nifty filename
	if %%G LSS 10 (
		set SOURCE=!SUBJ!000%%G
	) else ( if %%G LSS 100 (
			set SOURCE=!SUBJ!00%%G
		) else ( 
			set SOURCE=!SUBJ!0%%G
		)
	)

	REM Run NiftyReg Aladin
	reg_aladin -target !REF! -source !SOURCE!.nii -rmask !RMASK! -aff !SOURCE!_aff.txt
	REM Run NiftyReg F3D
	reg_f3d -target !REF! -source !SOURCE!.nii -rmask !RMASK! -aff !SOURCE!_aff.txt -cpp !SOURCE!_cpp.nii -result !SOURCE!_warped.nii
	REM Run NiftyReg Transform
	reg_transform -ref !REF! -cpp2def !SOURCE!_cpp.nii !SOURCE!_def.nii

)

