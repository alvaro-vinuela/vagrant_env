sudo sed -i -e "s|mirrorlist=|#mirrorlist=|g" /etc/yum.repos.d/CentOS-*
sudo sed -i -e "s|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g" /etc/yum.repos.d/CentOS-*
sudo dnf clean all
sudo dnf swap centos-linux-repos centos-stream-repos

# source: https://proyectoa.com/solucion-al-error-failed-to-download-metadata-for-repo-appstream-en-centos-8/
