-- Active: 1687412249933@@127.0.0.1@3306

## Pertemuan 2

# Membuat User

create user praktikan@localhost identified by "12345678";

# Menampilkan User

select user from mysql.user;

# Menghapus User

drop user praktikan@localhost;

# Membuat hak akses untuk user praktikan (hanya insert dan delete)

grant insert,delete on *.* to praktikan identified by '12345678';

#Membuat hak akses untuk user praktikan (hak penuh)

grant all on *.* to praktikan identified by '12345678';

#Menampilkan hak akses untuk user

show grants for praktikan;

#Menghapus hak akses untuk user

revoke all on *.* from praktikan;

flush privileges;

# Mengganti Password User

set password for 'praktikan'@'localhost'=password ('qwerty');

flush privileges;

