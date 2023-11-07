# quiz pertemuan 9

use koperasi;

select
    a.Id_member,
    b.nama,
    a.jumlah
from pinjam a
    inner join member b on (a.Id_member = b.Id_member)
where a.jumlah > 500000;