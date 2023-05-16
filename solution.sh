addgroup shared
useradd -G shared -m user1
useradd -G shared -m user2
mkdir /shared_files
touch /shared_files/shared_file
chown user1:shared /shared_files
chown user1:shared /shared_files/shared_file
chmod 660 /shared_files/shared_file
deluser --remove-home user1
deluser --remove-home user2
delgroup shared
rm /shared_files/shared_file
rmdir /shared_files
