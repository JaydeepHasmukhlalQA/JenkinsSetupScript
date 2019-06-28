echo "Installing JDK/JRE \n"
sudo apt install -y wget openjdk-8-jdk openjdk-8-jre
java -version

echo "Installing Maven"
sudo apt install -y maven
sudo mvn -version