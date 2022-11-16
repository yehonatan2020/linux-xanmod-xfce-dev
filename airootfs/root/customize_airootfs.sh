#rm -rf /usr/lib/modules-load.d/nvidia-utils.conf
rm -rf usr/lib/modprobe.d/nvidia-utils.conf
sed -i 's/HOOKS=(base udev*/& plymouth/' /etc/mkinitcpio.conf 
sudo plymouth-set-default-theme -R arch-glow 
sudo pacman-key --init
sudo pacman-key --populate
sudo pacman -Sy
cd root/abootimg && sudo pacman --noconfirm -U abootimg-0.6-1-x86_64.pkg.tar.lzo && cd ../..
rm -rf root/abootimg
cd root/android-apktool && sudo pacman --noconfirm -U android-apktool-2.6.1-1-any.pkg.tar.lzo && cd ../..
rm -rf root/android-apktool
cd root/android-sdk-platform-tools && sudo pacman --noconfirm -U android-sdk-platform-tools-33.0.3-1-x86_64.pkg.tar.lzo && cd ../..
rm -rf root/android-sdk-platform-tools
cd root/android-udev-git && sudo pacman --noconfirm -U android-udev-git-20220903.r3.gac87fda-1-any.pkg.tar.lzo && cd ../..
rm -rf root/android-udev-git
cd root/autojump && sudo pacman -U --noconfirm autojump-22.5.3-9-any.pkg.tar.lzo && cd ../..
rm -rf root/autojump
cd root/dxvk-bin && sudo pacman --noconfirm -U dxvk-bin-1.10.3-1-x86_64.pkg.tar.lzo && cd ../..
rm -rf root/dxvk-bin
cd root/git-extras && sudo pacman --noconfirm -U git-extras-6.4.0-1-any.pkg.tar.lzo && cd ../..
rm -rf root/git-extras
#cd root/ncurses5-compat-libs && sudo pacman --noconfirm -U ncurses5-compat-libs-6.3-1-x86_64.pkg.tar.lzo && cd ../..
#rm -rf root/ncurses5-compat-libs
cd root/lib32-ncurses5-compat-libs && sudo pacman --noconfirm --needed -U lib32-ncurses5-compat-libs-6.3-1-x86_64.pkg.tar.lzo && cd ../..
rm -rf root/lib32-ncurses5-compat-libs
cd root/payload-dumper-go-bin && sudo pacman --noconfirm -U payload-dumper-go-bin-1.2.2-1-x86_64.pkg.tar.lzo && cd ../..
rm -rf /root/payload-dumper-go-bin
cd root/ttf-ms-win11-auto && sudo pacman --noconfirm -U ttf-ms-win11-auto-10.0.22621.382-1-any.pkg.tar.lzo && cd ../..
rm -rf root/ttf-ms-win11-auto
cd root/zramd && sudo pacman -U --noconfirm zramd-0.9.2-1-any.pkg.tar.lzo && cd ../..
rm -rf root/zramd
cd root/video-downloader-git && sudo pacman --noconfirm -U video-downloader-git-0.10.10.r3.g7383bcc-1-any.pkg.tar.lzo && cd ../..
rm -rf root/video-downloader-git
cd root/alg-cala-config-xanmod && sudo --noconfirm -U alg-cala-config-xanmod-22.07-4-any.pkg.tar.lzo && cd ..
rm -rf  root/alg-cala-config-xanmod
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/avahi-discover.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/avahi-discover.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/bssh.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/bssh.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/stoken-gui.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/stoken-gui.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/stoken-gui-small.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/stoken-gui-small.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/bvnc.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/bvnc.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/cmake-gui.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/cmake-gui.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/qv4l2.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/qv4l2.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/qvidcap.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/qvidcap.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/htop.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/htop.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/vim.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/vim.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/org.gnome.gedit.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/org.gnome.gedit.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/lstopo.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/lstopo.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/guake.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/guake.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/guake-prefs.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/guake-prefs.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/mpv.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/mpv.desktop
sudo systemctl enable hv_fcopy_daemon.service
sudo systemctl enable hv_kvp_daemon.service
sudo systemctl enable hv_vss_daemon.service
sudo systemctl enable tlp.service
sudo systemctl enable fstrim.timer
sudo systemctl enable earlyoom.service 
sudo systemctl enable cronie.service 
sudo systemctl enable apparmor.service 
sudo systemctl enable zramd.service
sudo gpasswd -a liveuser autologin
sudo pacman-key --init
sudo pacman-key --populate
sudo pacman --noconfirm -Syu
sudo pacman --noconfirm -S ncurses5-compat-libs openssl-1.1 lib32-vulkan-icd-loader gtk-engine-murrine
echo "blacklist elan_i2c" >> /etc/modprobe.d/blacklist.conf
