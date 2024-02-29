curl -LJO https://github.com/philipnickel/Scipts/blob/main/basictex.zip
curl -LJO https://github.com/philipnickel/Scipts/blob/main/pandoc_intel.zip

# unzip the files
unzip basictex.zip
unzip pandoc_intel.zip

# install basictex
cd basictex
sudo install -pkg BasicTeX.pkg -target /
cd ../

# install pandoc
cd pandoc_intel
sudo install -pkg pandoc_macOS_Intel.pkg -target /
cd ../

rm -rf basictex.zip
rm -rf pandoc_intel.zip
rm -rf basictex
rm -rf pandoc_intel

sudo tlmgr update --self
cd
cd /usr/local/texlive/2023basic/
sudo chmod 777 tlpkg
sudo tlmgr install texliveonfly
sudo tlmgr install xelatex
sudo tlmgr install adjustbox
sudo tlmgr install tcolorbox
sudo tlmgr install collectbox
sudo tlmgr install ucs
sudo tlmgr install environ
sudo tlmgr install trimspaces
sudo tlmgr install titling
sudo tlmgr install enumitem
sudo tlmgr install rsfs
sudo tlmgr install pdfcol
sudo tlmgr install soul
sudo tlmgr update --all

