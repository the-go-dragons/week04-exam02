# Create "shared" users-group
addgroup shared

# Create "user1" with home directory by -m and add it to shared group by -G
useradd -G shared -m user1

# Create "user2" with home directory by -m and add it to shared group by -G
useradd -G shared -m user2

# Make "shared_files" directory in root directory
mkdir /shared_files

# Create "shared_file" as an empty file in "/shared_files" directory
touch /shared_files/shared_file

# Change the owner of "shared_file" file to "user1" as owner and "shared" as users-group
chown user1:shared /shared_files

# Change the owner of "shared_file" file to "user2" as owner and "shared" as users-group
chown user1:shared /shared_files/shared_file

# Change file permissions to 660 that means owner/users-group are able to read and write
chmod 660 /shared_files/shared_file

# Delete "user1" and it's home directory
deluser --remove-home user1

# Delete "user2" and it's home directory
deluser --remove-home user2

# Delete "shared" users-group
delgroup shared

# Remove/Delete the "shared_file" file
rm /shared_files/shared_file

# Remove "/shared_files" directory
rmdir /shared_files
