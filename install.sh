echo "Would you like to install JDK/JRE? [y/n]"
read installjava

if [ $installjava = "y" ]
then
        echo "Installing JDK/JRE \n"
        sudo apt install -y wget openjdk-8-jdk openjdk-8-jre
fi

echo "Creating Jenkins User \n"
sudo useradd --create-home jenkins
sudo usermod --shell /bin/bash jenkins

echo "Downloading Jenkins \n"
sudo wget http://updates.jenkins-ci.org/latest/jenkins.war
sudo mv ./jenkins.war /home/jenkins/jenkins.war

echo "Installing Jenkins Service Script \n"
sudo cp ./jenkins.service /etc/systemd/system/
sudo systemctl daemon-reload
echo "Finished Installing Jenkins \n"