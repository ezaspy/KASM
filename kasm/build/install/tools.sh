#!/bin/bash
banner="\n  ###################################################\n  |   \033[1;33mPlease note the following:\033[0m                    |\n  |     -> \033[1;33mConfiguring KASM can take ~10 hours\033[0m      |\n  |     -> \033[1;33mEnsure BUILD.md is available to you\033[0m      |\n  |     -> \033[1;33mSelect the options if/when prompted\033[0m      |\n  ###################################################\n"
install_or_skip=$(cat /home/sansforensics/.install_or_skip)

if [[ $install_or_skip = *Installed\ REMnux* ]]; then
  remnux_install_or_skip=">> \033[1;32mInstalled   REMnux\033[0m"
else
  remnux_install_or_skip="-- \033[1;30mSkipped     REMnux\033[0m"
fi

clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    ++ Installing Jupyter Notebooks\n"
pip install jupyterlab notebook voila > /dev/null 2>&1
pip2 install jupyterlab notebook voila > /dev/null 2>&1

clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    ++ Installing Chrome Browser\n"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /dev/null 2>&1
sudo dpkg -i google-chrome-stable_current_amd64.deb > /dev/null 2>&1
sudo rm -rf google-chrome-stable_current_amd64.deb
clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    ++ Installing Opera Browser\n"
sudo snap install opera > /dev/null 2>&1
clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    ++ Installing DB Browser for SQLite\n"
sudo apt install sqlitebrowser xz-utils python3-apt wireshark -y > /dev/null 2>&1
sudo snap install postman
##################################################################################################
#sudo apt install torbrowser-launcher -y
#sudo torbrowser-launcher
# OR
#sudo apt install flatpak -y
#sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
#flatpak install flathub com.github.micahflee.torbrowser-launcher -y
##################################################################################################

# install cloud clis
clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    >> \033[1;32mInstalled   DB Browser for SQLite\033[0m\n    ++ Installing Cloud CLIs\n"
# install azure cli
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash > /dev/null 2>&1
# install aws cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" > /dev/null 2>&1
unzip awscliv2.zip > /dev/null 2>&1
sudo ./aws/install > /dev/null 2>&1
rm awscliv2.zip
# install gcp cli
sudo apt-get install google-cloud-cli



clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    >> \033[1;32mInstalled   DB Browser for SQLite\033[0m\n    >> \033[1;32mInstalled   Cloud CLIs\033[0m\n    ++ Installing Bookstack\n"
sudo git clone https://github.com/BookStackApp/BookStack.git /opt/bookstack > /dev/null 2>&1

sudo mkdir -p /opt/TZWorks /opt/BlueTeamPowerShell /opt/Sysmon/SysmonForLinux /home/sansforensics/Desktop/CobaltStrike-Defence/content

clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    >> \033[1;32mInstalled   DB Browser for SQLite\033[0m\n    >> \033[1;32mInstalled   Cloud CLIs\033[0m\n    >> \033[1;32mInstalled   Bookstack\033[0m\033[0m\n    ++ Downloading additional tooling\n    ++ Downloading onestopcybershop\n"
git clone https://github.com/ezaspy/oscybershop.git /home/sansforensics/Desktop/cybershop > /dev/null 2>&1

clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    >> \033[1;32mInstalled   DB Browser for SQLite\033[0m\n    >> \033[1;32mInstalled   Cloud CLIs\033[0m\n    >> \033[1;32mInstalled   Bookstack\033[0m\033[0m\n    ++ Downloading additional tooling\n      >> \033[1;34mDownloaded  onestopcybershop\033[0m\n    ++ Downloading gandalf\n"
sudo git clone https://github.com/ezaspy/gandalf.git /opt/gandalf > /dev/null 2>&1
clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    >> \033[1;32mInstalled   DB Browser for SQLite\033[0m\n    >> \033[1;32mInstalled   Cloud CLIs\033[0m\n    >> \033[1;32mInstalled   Bookstack\033[0m\033[0m\n    ++ Downloading additional tooling\n      >> \033[1;34mDownloaded  onestopcybershop\033[0m\n      >> \033[1;34mDownloaded  gandalf\033[0m\n    ++ Downloading bruce\n"
sudo git clone https://github.com/ezaspy/bruce.git /opt/bruce > /dev/null 2>&1
clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    >> \033[1;32mInstalled   DB Browser for SQLite\033[0m\n    >> \033[1;32mInstalled   Cloud CLIs\033[0m\n    >> \033[1;32mInstalled   Bookstack\033[0m\033[0m\n    ++ Downloading additional tooling\n      >> \033[1;34mDownloaded  onestopcybershop\033[0m\n      >> \033[1;34mDownloaded  gandalf\033[0m\n      >> \033[1;34mDownloaded  bruce\033[0m\n    ++ Downloading SIGMA\n"
sudo git clone https://github.com/SigmaHQ/sigma.git /opt/sigma > /dev/null 2>&1
clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    >> \033[1;32mInstalled   DB Browser for SQLite\033[0m\n    >> \033[1;32mInstalled   Cloud CLIs\033[0m\n    >> \033[1;32mInstalled   Bookstack\033[0m\033[0m\n    ++ Downloading additional tooling\n      >> \033[1;34mDownloaded  onestopcybershop\033[0m\n      >> \033[1;34mDownloaded  gandalf\033[0m\n      >> \033[1;34mDownloaded  bruce\033[0m\n      >> \033[1;34mDownloaded  SIGMA\033[0m\n    ++ Downloading DeepBlueCLI\n"
sudo git clone https://github.com/sans-blue-team/DeepBlueCLI.git /opt/DeepBlueCLI > /dev/null 2>&1
clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    >> \033[1;32mInstalled   DB Browser for SQLite\033[0m\n    >> \033[1;32mInstalled   Cloud CLIs\033[0m\n    >> \033[1;32mInstalled   Bookstack\033[0m\033[0m\n    ++ Downloading additional tooling\n      >> \033[1;34mDownloaded  onestopcybershop\033[0m\n      >> \033[1;34mDownloaded  gandalf\033[0m\n      >> \033[1;34mDownloaded  bruce\033[0m\n      >> \033[1;34mDownloaded  SIGMA\033[0m\n      >> \033[1;34mDownloaded  DeepBlueCLI\033[0m\n    ++ Downloading KAPE\n"
sudo git clone https://github.com/EricZimmerman/KapeFiles.git /opt/KAPE > /dev/null 2>&1
clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    >> \033[1;32mInstalled   DB Browser for SQLite\033[0m\n    >> \033[1;32mInstalled   Cloud CLIs\033[0m\n    >> \033[1;32mInstalled   Bookstack\033[0m\033[0m\n    ++ Downloading additional tooling\n      >> \033[1;34mDownloaded  onestopcybershop\033[0m\n      >> \033[1;34mDownloaded  gandalf\033[0m\n      >> \033[1;34mDownloaded  bruce\033[0m\n      >> \033[1;34mDownloaded  SIGMA\033[0m\n      >> \033[1;34mDownloaded  DeepBlueCLI\033[0m\n      >> \033[1;34mDownloaded  KAPE\033[0m\n    ++ Downloading PowerForensics\n"
sudo git clone https://github.com/Invoke-IR/PowerForensics.git /opt/PowerForensics > /dev/null 2>&1
clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    >> \033[1;32mInstalled   DB Browser for SQLite\033[0m\n    >> \033[1;32mInstalled   Cloud CLIs\033[0m\n    >> \033[1;32mInstalled   Bookstack\033[0m\033[0m\n    ++ Downloading additional tooling\n      >> \033[1;34mDownloaded  onestopcybershop\033[0m\n      >> \033[1;34mDownloaded  gandalf\033[0m\n      >> \033[1;34mDownloaded  bruce\033[0m\n      >> \033[1;34mDownloaded  SIGMA\033[0m\n      >> \033[1;34mDownloaded  DeepBlueCLI\033[0m\n      >> \033[1;34mDownloaded  KAPE\033[0m\n      >> \033[1;34mDownloaded  PowerForensics\033[0m\n    ++ Downloading MemProcFS\n"
sudo git clone https://github.com/ufrisk/MemProcFS.git /opt/MemProcFS > /dev/null 2>&1
clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    >> \033[1;32mInstalled   DB Browser for SQLite\033[0m\n    >> \033[1;32mInstalled   Cloud CLIs\033[0m\n    >> \033[1;32mInstalled   Bookstack\033[0m\033[0m\n    ++ Downloading additional tooling\n      >> \033[1;34mDownloaded  onestopcybershop\033[0m\n      >> \033[1;34mDownloaded  gandalf\033[0m\n      >> \033[1;34mDownloaded  bruce\033[0m\n      >> \033[1;34mDownloaded  SIGMA\033[0m\n      >> \033[1;34mDownloaded  DeepBlueCLI\033[0m\n      >> \033[1;34mDownloaded  KAPE\033[0m\n      >> \033[1;34mDownloaded  PowerForensics\033[0m\n      >> \033[1;34mDownloaded  MemProcFS\033[0m\n    ++ Downloading WMIExplorer\n"
sudo git clone https://github.com/vinaypamnani/wmie2/ /opt/WMIExplorer > /dev/null 2>&1
clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    >> \033[1;32mInstalled   DB Browser for SQLite\033[0m\n    >> \033[1;32mInstalled   Cloud CLIs\033[0m\n    >> \033[1;32mInstalled   Bookstack\033[0m\033[0m\n    ++ Downloading additional tooling\n      >> \033[1;34mDownloaded  onestopcybershop\033[0m\n      >> \033[1;34mDownloaded  gandalf\033[0m\n      >> \033[1;34mDownloaded  bruce\033[0m\n      >> \033[1;34mDownloaded  SIGMA\033[0m\n      >> \033[1;34mDownloaded  DeepBlueCLI\033[0m\n      >> \033[1;34mDownloaded  KAPE\033[0m\n      >> \033[1;34mDownloaded  PowerForensics\033[0m\n      >> \033[1;34mDownloaded  MemProcFS\033[0m\n      >> \033[1;34mDownloaded  WMIExplorer\033[0m\n    ++ Downloading CobaltStrike-Defence\n"
sudo git clone https://github.com/MichaelKoczwara/Awesome-CobaltStrike-Defence /home/sansforensics/Desktop/CobaltStrike-Defence > /dev/null 2>&1
sudo chmod +x /opt/kasm/kasm/build/install/CobaltStrike-Defence.py
clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    >> \033[1;32mInstalled   DB Browser for SQLite\033[0m\n    >> \033[1;32mInstalled   Cloud CLIs\033[0m\n    >> \033[1;32mInstalled   Bookstack\033[0m\033[0m\n    ++ Downloading additional tooling\n      >> \033[1;34mDownloaded  onestopcybershop\033[0m\n      >> \033[1;34mDownloaded  gandalf\033[0m\n      >> \033[1;34mDownloaded  bruce\033[0m\n      >> \033[1;34mDownloaded  SIGMA\033[0m\n      >> \033[1;34mDownloaded  DeepBlueCLI\033[0m\n      >> \033[1;34mDownloaded  KAPE\033[0m\n      >> \033[1;34mDownloaded  PowerForensics\033[0m\n      >> \033[1;34mDownloaded  MemProcFS\033[0m\n      >> \033[1;34mDownloaded  WMIExplorer\033[0m\n      >> \033[1;34mDownloaded  CobaltStrike-Defence\033[0m\n    ++ Downloading freq\n"
sudo git clone https://github.com/MarkBaggett/freq.git /opt/freq > /dev/null 2>&1
clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    >> \033[1;32mInstalled   DB Browser for SQLite\033[0m\n    >> \033[1;32mInstalled   Cloud CLIs\033[0m\n    >> \033[1;32mInstalled   Bookstack\033[0m\033[0m\n    ++ Downloading additional tooling\n      >> \033[1;34mDownloaded  onestopcybershop\033[0m\n      >> \033[1;34mDownloaded  gandalf\033[0m\n      >> \033[1;34mDownloaded  bruce\033[0m\n      >> \033[1;34mDownloaded  SIGMA\033[0m\n      >> \033[1;34mDownloaded  DeepBlueCLI\033[0m\n      >> \033[1;34mDownloaded  KAPE\033[0m\n      >> \033[1;34mDownloaded  PowerForensics\033[0m\n      >> \033[1;34mDownloaded  MemProcFS\033[0m\n      >> \033[1;34mDownloaded  WMIExplorer\033[0m\n      >> \033[1;34mDownloaded  CobaltStrike-Defence\033[0m\n      >> \033[1;34mDownloaded  freq\033[0m\n    ++ Downloading dnstwist\n"
sudo git clone https://github.com/elceef/dnstwist.git /opt/dnstwist > /dev/null 2>&1
clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    >> \033[1;32mInstalled   DB Browser for SQLite\033[0m\n    >> \033[1;32mInstalled   Cloud CLIs\033[0m\n    >> \033[1;32mInstalled   Bookstack\033[0m\033[0m\n    ++ Downloading additional tooling\n      >> \033[1;34mDownloaded  onestopcybershop\033[0m\n      >> \033[1;34mDownloaded  gandalf\033[0m\n      >> \033[1;34mDownloaded  bruce\033[0m\n      >> \033[1;34mDownloaded  SIGMA\033[0m\n      >> \033[1;34mDownloaded  DeepBlueCLI\033[0m\n      >> \033[1;34mDownloaded  KAPE\033[0m\n      >> \033[1;34mDownloaded  PowerForensics\033[0m\n      >> \033[1;34mDownloaded  MemProcFS\033[0m\n      >> \033[1;34mDownloaded  WMIExplorer\033[0m\n      >> \033[1;34mDownloaded  CobaltStrike-Defence\033[0m\n      >> \033[1;34mDownloaded  freq\033[0m\n      >> \033[1;34mDownloaded  dnstwist\033[0m\n    ++ Downloading rdap\n"
sudo git clone https://github.com/ezaspy/rdap.git /opt/rdap > /dev/null 2>&1
clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    >> \033[1;32mInstalled   DB Browser for SQLite\033[0m\n    >> \033[1;32mInstalled   Cloud CLIs\033[0m\n    >> \033[1;32mInstalled   Bookstack\033[0m\033[0m\n    ++ Downloading additional tooling\n      >> \033[1;34mDownloaded  onestopcybershop\033[0m\n      >> \033[1;34mDownloaded  gandalf\033[0m\n      >> \033[1;34mDownloaded  bruce\033[0m\n      >> \033[1;34mDownloaded  SIGMA\033[0m\n      >> \033[1;34mDownloaded  DeepBlueCLI\033[0m\n      >> \033[1;34mDownloaded  KAPE\033[0m\n      >> \033[1;34mDownloaded  PowerForensics\033[0m\n      >> \033[1;34mDownloaded  MemProcFS\033[0m\n      >> \033[1;34mDownloaded  WMIExplorer\033[0m\n      >> \033[1;34mDownloaded  CobaltStrike-Defence\033[0m\n      >> \033[1;34mDownloaded  freq\033[0m\n      >> \033[1;34mDownloaded  dnstwist\033[0m\n      >> \033[1;34mDownloaded  rdap\033[0m\n    ++ Downloading sherlock\n"
sudo git clone https://github.com/sherlock-project/sherlock.git /opt/sherlock > /dev/null 2>&1
clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    >> \033[1;32mInstalled   DB Browser for SQLite\033[0m\n    >> \033[1;32mInstalled   Cloud CLIs\033[0m\n    >> \033[1;32mInstalled   Bookstack\033[0m\033[0m\n    ++ Downloading additional tooling\n      >> \033[1;34mDownloaded  onestopcybershop\033[0m\n      >> \033[1;34mDownloaded  gandalf\033[0m\n      >> \033[1;34mDownloaded  bruce\033[0m\n      >> \033[1;34mDownloaded  SIGMA\033[0m\n      >> \033[1;34mDownloaded  DeepBlueCLI\033[0m\n      >> \033[1;34mDownloaded  KAPE\033[0m\n      >> \033[1;34mDownloaded  PowerForensics\033[0m\n      >> \033[1;34mDownloaded  MemProcFS\033[0m\n      >> \033[1;34mDownloaded  WMIExplorer\033[0m\n      >> \033[1;34mDownloaded  CobaltStrike-Defence\033[0m\n      >> \033[1;34mDownloaded  freq\033[0m\n      >> \033[1;34mDownloaded  dnstwist\033[0m\n      >> \033[1;34mDownloaded  rdap\033[0m\n      >> \033[1;34mDownloaded  sherlock\033[0m\n    ++ Downloading TweetScraper\n"
sudo git clone https://github.com/jonbakerfish/TweetScraper.git /opt/TweetScraper > /dev/null 2>&1
clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    >> \033[1;32mInstalled   DB Browser for SQLite\033[0m\n    >> \033[1;32mInstalled   Cloud CLIs\033[0m\n    >> \033[1;32mInstalled   Bookstack\033[0m\033[0m\n    ++ Downloading additional tooling\n      >> \033[1;34mDownloaded  onestopcybershop\033[0m\n      >> \033[1;34mDownloaded  gandalf\033[0m\n      >> \033[1;34mDownloaded  bruce\033[0m\n      >> \033[1;34mDownloaded  SIGMA\033[0m\n      >> \033[1;34mDownloaded  DeepBlueCLI\033[0m\n      >> \033[1;34mDownloaded  KAPE\033[0m\n      >> \033[1;34mDownloaded  PowerForensics\033[0m\n      >> \033[1;34mDownloaded  MemProcFS\033[0m\n      >> \033[1;34mDownloaded  WMIExplorer\033[0m\n      >> \033[1;34mDownloaded  CobaltStrike-Defence\033[0m\n      >> \033[1;34mDownloaded  freq\033[0m\n      >> \033[1;34mDownloaded  dnstwist\033[0m\n      >> \033[1;34mDownloaded  rdap\033[0m\n      >> \033[1;34mDownloaded  sherlock\033[0m\n      >> \033[1;34mDownloaded  TweetScraper\033[0m\n    ++ Downloading karma\n"
sudo git clone https://github.com/Dheerajmadhukar/karma_v2.git /opt/karma > /dev/null 2>&1

clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    >> \033[1;32mInstalled   DB Browser for SQLite\033[0m\n    >> \033[1;32mInstalled   Cloud CLIs\033[0m\n    >> \033[1;32mInstalled   Bookstack\033[0m\033[0m\n    ++ Downloading additional tooling\n      >> \033[1;34mDownloaded  onestopcybershop\033[0m\n      >> \033[1;34mDownloaded  gandalf\033[0m\n      >> \033[1;34mDownloaded  bruce\033[0m\n      >> \033[1;34mDownloaded  SIGMA\033[0m\n      >> \033[1;34mDownloaded  DeepBlueCLI\033[0m\n      >> \033[1;34mDownloaded  KAPE\033[0m\n      >> \033[1;34mDownloaded  PowerForensics\033[0m\n      >> \033[1;34mDownloaded  MemProcFS\033[0m\n      >> \033[1;34mDownloaded  WMIExplorer\033[0m\n      >> \033[1;34mDownloaded  CobaltStrike-Defence\033[0m\n      >> \033[1;34mDownloaded  freq\033[0m\n      >> \033[1;34mDownloaded  dnstwist\033[0m\n      >> \033[1;34mDownloaded  rdap\033[0m\n      >> \033[1;34mDownloaded  sherlock\033[0m\n      >> \033[1;34mDownloaded  TweetScraper\033[0m\n      >> \033[1;34mDownloaded  karma\033[0m\n    ++ Downloading TZWorks\n"
sudo wget -O /opt/TZWorks/2022.10.19.win64.zip https://tzworks.com/prototypes/builds/2022.10.19.win64.zip > /dev/null 2>&1
sudo unzip /opt/TZWorks/2022.10.19.win64.zip -d /opt/TZWorks/2022.10.19.win64 > /dev/null 2>&1
sudo wget -O /opt/TZWorks/2022.09.27.lin64.zip https://tzworks.com/prototypes/builds/2022.09.27.lin64.zip > /dev/null 2>&1
sudo unzip /opt/TZWorks/2022.09.27.lin64.zip -d /opt/TZWorks/2022.09.27.lin64 > /dev/null 2>&1

clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    >> \033[1;32mInstalled   DB Browser for SQLite\033[0m\n    >> \033[1;32mInstalled   Cloud CLIs\033[0m\n    >> \033[1;32mInstalled   Bookstack\033[0m\033[0m\n    ++ Downloading additional tooling\n      >> \033[1;34mDownloaded  onestopcybershop\033[0m\n      >> \033[1;34mDownloaded  gandalf\033[0m\n      >> \033[1;34mDownloaded  bruce\033[0m\n      >> \033[1;34mDownloaded  SIGMA\033[0m\n      >> \033[1;34mDownloaded  DeepBlueCLI\033[0m\n      >> \033[1;34mDownloaded  KAPE\033[0m\n      >> \033[1;34mDownloaded  PowerForensics\033[0m\n      >> \033[1;34mDownloaded  MemProcFS\033[0m\n      >> \033[1;34mDownloaded  WMIExplorer\033[0m\n      >> \033[1;34mDownloaded  CobaltStrike-Defence\033[0m\n      >> \033[1;34mDownloaded  freq\033[0m\n      >> \033[1;34mDownloaded  dnstwist\033[0m\n      >> \033[1;34mDownloaded  rdap\033[0m\n      >> \033[1;34mDownloaded  sherlock\033[0m\n      >> \033[1;34mDownloaded  TweetScraper\033[0m\n      >> \033[1;34mDownloaded  karma\033[0m\n      >> \033[1;34mDownloaded  TZWorks\033[0m\n    ++ Downloading BlueTeamPowerShell\n"
sudo wget -O /opt/BlueTeamPowerShell.zip https://blueteampowershell.com/SEC505-Scripts.zip > /dev/null 2>&1
sudo unzip -P 505 /opt/BlueTeamPowerShell.zip -d /opt/BlueTeamPowerShell > /dev/null 2>&1

clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    >> \033[1;32mInstalled   DB Browser for SQLite\033[0m\n    >> \033[1;32mInstalled   Cloud CLIs\033[0m\n    >> \033[1;32mInstalled   Bookstack\033[0m\033[0m\n    ++ Downloading additional tooling\n      >> \033[1;34mDownloaded  onestopcybershop\033[0m\n      >> \033[1;34mDownloaded  gandalf\033[0m\n      >> \033[1;34mDownloaded  bruce\033[0m\n      >> \033[1;34mDownloaded  SIGMA\033[0m\n      >> \033[1;34mDownloaded  DeepBlueCLI\033[0m\n      >> \033[1;34mDownloaded  KAPE\033[0m\n      >> \033[1;34mDownloaded  PowerForensics\033[0m\n      >> \033[1;34mDownloaded  MemProcFS\033[0m\n      >> \033[1;34mDownloaded  WMIExplorer\033[0m\n      >> \033[1;34mDownloaded  CobaltStrike-Defence\033[0m\n      >> \033[1;34mDownloaded  freq\033[0m\n      >> \033[1;34mDownloaded  dnstwist\033[0m\n      >> \033[1;34mDownloaded  rdap\033[0m\n      >> \033[1;34mDownloaded  sherlock\033[0m\n      >> \033[1;34mDownloaded  TweetScraper\033[0m\n      >> \033[1;34mDownloaded  karma\033[0m\n      >> \033[1;34mDownloaded  TZWorks\033[0m\n      >> \033[1;34mDownloaded  BlueTeamPowerShell\033[0m\n    ++ Downloading Sysmon\n"
sudo wget -O /opt/Sysmon.zip https://download.sysinternals.com/files/Sysmon.zip > /dev/null 2>&1
sudo unzip /opt/Sysmon.zip -d /opt/Sysmon > /dev/null 2>&1
sudo git clone https://github.com/Sysinternals/SysmonForLinux.git /opt/Sysmon/SysmonForLinux > /dev/null 2>&1

clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    >> \033[1;32mInstalled   DB Browser for SQLite\033[0m\n    >> \033[1;32mInstalled   Cloud CLIs\033[0m\n    >> \033[1;32mInstalled   Bookstack\033[0m\033[0m\n    >> \033[1;32mDownloaded  additional tooling\033[0m\n      >> \033[1;34mDownloaded  onestopcybershop\033[0m\n      >> \033[1;34mDownloaded  gandalf\033[0m\n      >> \033[1;34mDownloaded  bruce\033[0m\n      >> \033[1;34mDownloaded  SIGMA\033[0m\n      >> \033[1;34mDownloaded  DeepBlueCLI\033[0m\n      >> \033[1;34mDownloaded  KAPE\033[0m\n      >> \033[1;34mDownloaded  PowerForensics\033[0m\n      >> \033[1;34mDownloaded  MemProcFS\033[0m\n      >> \033[1;34mDownloaded  WMIExplorer\033[0m\n      >> \033[1;34mDownloaded  CobaltStrike-Defence\033[0m\n      >> \033[1;34mDownloaded  freq\033[0m\n      >> \033[1;34mDownloaded  dnstwist\033[0m\n      >> \033[1;34mDownloaded  rdap\033[0m\n      >> \033[1;34mDownloaded  sherlock\033[0m\n      >> \033[1;34mDownloaded  TweetScraper\033[0m\n      >> \033[1;34mDownloaded  karma\033[0m\n      >> \033[1;34mDownloaded  TZWorks\033[0m\n      >> \033[1;34mDownloaded  BlueTeamPowerShell\033[0m\n      >> \033[1;34mDownloaded  Sysmon\033[0m\n    ++ Installing Metasploit\n"
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall > /dev/null 2>&1
sudo chmod 755 msfinstall > /dev/null 2>&1
sudo ./msfinstall > /dev/null 2>&1

clear
printf "$banner"
printf "\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    >> \033[1;32mInstalled   DB Browser for SQLite\033[0m\n    >> \033[1;32mInstalled   Cloud CLIs\033[0m\n    >> \033[1;32mInstalled   Bookstack\033[0m\033[0m\n    >> \033[1;32mDownloaded  additional tooling\033[0m\n      >> \033[1;34mDownloaded  onestopcybershop\033[0m\n      >> \033[1;34mDownloaded  gandalf\033[0m\n      >> \033[1;34mDownloaded  bruce\033[0m\n      >> \033[1;34mDownloaded  SIGMA\033[0m\n      >> \033[1;34mDownloaded  DeepBlueCLI\033[0m\n      >> \033[1;34mDownloaded  KAPE\033[0m\n      >> \033[1;34mDownloaded  PowerForensics\033[0m\n      >> \033[1;34mDownloaded  MemProcFS\033[0m\n      >> \033[1;34mDownloaded  WMIExplorer\033[0m\n      >> \033[1;34mDownloaded  CobaltStrike-Defence\033[0m\n      >> \033[1;34mDownloaded  freq\033[0m\n      >> \033[1;34mDownloaded  dnstwist\033[0m\n      >> \033[1;34mDownloaded  rdap\033[0m\n      >> \033[1;34mDownloaded  sherlock\033[0m\n      >> \033[1;34mDownloaded  TweetScraper\033[0m\n      >> \033[1;34mDownloaded  karma\033[0m\n      >> \033[1;34mDownloaded  TZWorks\033[0m\n      >> \033[1;34mDownloaded  BlueTeamPowerShell\033[0m\n      >> \033[1;34mDownloaded  Sysmon\033[0m\n    >> \033[1;32mInstalled   Metasploit\033[0m\n    ++ Installing HTTrack\n"
sudo git clone https://github.com/xroche/httrack.git --recurse /opt/httrack > /dev/null 2>&1
cd /opt/httrack
sudo ./configure > /dev/null 2>&1
sudo make -j8 > /dev/null 2>&1
sudo make install DESTDIR=/ > /dev/null 2>&1
cd ~

clear
printf "$banner"
printf "\033[0m\n    >> \033[1;32mInitialised KASM-Workstation\033[0m\n    $remnux_install_or_skip\n    >> \033[1;32mUpdated     repositories\033[0m\n    >> \033[1;32mRemoved     redundant software\033[0m\n    >> \033[1;32mInstalled   virtualisation engines and docker\033[0m\n    >> \033[1;32mInstalled   elrond\033[0m\n    >> \033[1;32mInstalled   Jupyter Notebooks\033[0m\n    >> \033[1;32mInstalled   Chrome Browser\033[0m\n    >> \033[1;32mInstalled   Opera Browser\033[0m\n    >> \033[1;32mInstalled   DB Browser for SQLite\033[0m\n    >> \033[1;32mInstalled   Cloud CLIs\033[0m\n    >> \033[1;32mInstalled   Bookstack\033[0m\033[0m\n    >> \033[1;32mDownloaded  additional tooling\033[0m\n      >> \033[1;34mDownloaded  onestopcybershop\033[0m\n      >> \033[1;34mDownloaded  gandalf\033[0m\n      >> \033[1;34mDownloaded  bruce\033[0m\n      >> \033[1;34mDownloaded  SIGMA\033[0m\n      >> \033[1;34mDownloaded  DeepBlueCLI\033[0m\n      >> \033[1;34mDownloaded  KAPE\033[0m\n      >> \033[1;34mDownloaded  PowerForensics\033[0m\n      >> \033[1;34mDownloaded  MemProcFS\033[0m\n      >> \033[1;34mDownloaded  WMIExplorer\033[0m\n      >> \033[1;34mDownloaded  CobaltStrike-Defence\033[0m\n      >> \033[1;34mDownloaded  freq\033[0m\n      >> \033[1;34mDownloaded  dnstwist\033[0m\n      >> \033[1;34mDownloaded  rdap\033[0m\n      >> \033[1;34mDownloaded  sherlock\033[0m\n      >> \033[1;34mDownloaded  TweetScraper\033[0m\n      >> \033[1;34mDownloaded  karma\033[0m\n      >> \033[1;34mDownloaded  TZWorks\033[0m\n      >> \033[1;34mDownloaded  BlueTeamPowerShell\033[0m\n      >> \033[1;34mDownloaded  Sysmon\033[0m\n    >> \033[1;32mInstalled   Metasploit\033[0m\n    >> \033[1;32mInstalled   HTTrack\033[0m\n    ++ Installing Maltego\n"
wget -O Maltego.v4.3.1.deb https://maltego-downloads.s3.us-east-2.amazonaws.com/linux/Maltego.v4.3.1.deb > /dev/null 2>&1
sudo dpkg -i Maltego.v4.3.1.deb > /dev/null 2>&1
rm Maltego.v4.3.1.deb

sudo updatedb > /dev/null 2>&1