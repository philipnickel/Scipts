Paste one of the following in a terminal depending on OS. Preferably directly in the notebook from vs code with the kernel selected that will later be used when exporting. 
Please note: You may need to force reinstall nbconvert for each version of python that you plan to use. 
(python3 -m pip installl --force-reinstall nbconvert)

MacOS: 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/philipnickel/Scipts/main/script_VsCode_PDF-fix_MacOS.sh)"

Windows - powershell in administrator mode. Search for powershell -> right click -> Run as administrator: 
PowerShell -ExecutionPolicy Bypass -Command "& {Invoke-Expression (Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/philipnickel/Scipts/main/windows_pdf_fix.ps1' -UseBasicParsing).Content}"


