# echo 
echo "Script by Python Installation Support DTU"
echo "This script will install dependencies for exporting Jupyter Notebooks to PDF in Visual Studio Code."


echo "This script will take a while to run, please be patient, and don't close your terminal before it says 'script finished'."
sleep 1

# check for chocolatey
if [ -x "$(command -v choco)" ]; then
    echo "Chocolatey is already installed."
else
    echo "Chocolatey is not installed. Installing chocolatey..."
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
fi

# reset terminal to use chocolatey
refreshenv

# check for pandoc
if [ -x "$(command -v pandoc)" ]; then
    echo "Pandoc is already installed."
else
    echo "Pandoc is not installed. Installing pandoc..."
    choco install pandoc -y
fi

# check for miktex
if [ -x "$(command -v miktex)" ]; then
    echo "Miktex is already installed."
else
    echo "Miktex is not installed. Installing miktex..."
    choco install miktex -y
fi

# reset terminal to use miktex
refreshenv
initexmf --set-config-value=[MPM]AutoInstall=yes


echo "Updating nbconvert..."
pip install --force-reinstall nbconvert

echo "Script finished."
echo "Please make sure to restart visual studio code for the changes to take effect."
echo "If you have multiple versions of python installed and pdf exporting doesn't work,  try running "python3 -m pip install --force-reinstall nbconvert" for the version of python you are using in your notebook. You can do this directly in the vs code terminal (terminal -> new terminal)"
echo "If it still doesn't work resolve to using pdf export via HTML (Export as HTML and then convert to pdf using a browser)."
