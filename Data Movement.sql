create table mhs(
nim varchar(10),
angkatan smallint,
nama varchar(30),
status_aktif varchar(20),
seleksi varchar(10),
fakultas varchar(15),
program_studi varchar(50),
cabang varchar(40));


select distinct 'INSERT INTO MAHASISWA.FAKULTAS VALUES ('''||FAKULTAS||''');' FROM MHS;
 INSERT INTO MAHASISWA.FAKULTAS VALUES (1, 'S1-FILKOM');

select distinct 'INSERT INTO MAHASISWA.CABANG VALUES ('''||CABANG||''');' FROM MHS;
 INSERT INTO MAHASISWA.CABANG VALUES (1, 'UB - Kediri');
 INSERT INTO MAHASISWA.CABANG VALUES (2, 'UB - Malang');

 INSERT INTO MAHASISWA.STRATA VALUES ('1', 'S1');
 INSERT INTO MAHASISWA.JURUSAN VALUES (1, 1, 'SISTEM INFORMASI');
 INSERT INTO MAHASISWA.JURUSAN VALUES (2, 1, 'TEKNIK INFORMATIKA');
 
select distinct 'INSERT INTO MAHASISWA.PROGRAM_STUDI VALUES ('''||PROGRAM_STUDI||''');' FROM MHS;
 INSERT INTO MAHASISWA.PROGRAM_STUDI VALUES (1, 1, 1, 'Pendidikan Teknologi Informasi');
 INSERT INTO MAHASISWA.PROGRAM_STUDI VALUES (2, 1, 1, 'Sistem Informasi');
 INSERT INTO MAHASISWA.PROGRAM_STUDI VALUES (3, 1, 2, 'Teknik Informatika');
 INSERT INTO MAHASISWA.PROGRAM_STUDI VALUES (4, 1, 2, 'Teknik Komputer');
 INSERT INTO MAHASISWA.PROGRAM_STUDI VALUES (5, 1, 1, 'Teknologi Informasi');
 
select distinct 'INSERT INTO MAHASISWA.SELEKSI VALUES ('''||SELEKSI||''');' FROM MHS;
 INSERT INTO MAHASISWA.SELEKSI VALUES (1, 'SBMPTN');
 INSERT INTO MAHASISWA.SELEKSI VALUES (2, 'SNMPTN');
 INSERT INTO MAHASISWA.SELEKSI VALUES (3, 'SPMK');

select distinct 'INSERT INTO MAHASISWA.STATUS_KULIAH VALUES ('''||status_aktif||''');' FROM MHS;
 INSERT INTO MAHASISWA.STATUS_KULIAH VALUES (1, 'Aktif');
 INSERT INTO MAHASISWA.STATUS_KULIAH VALUES (2, 'Blokir');
 INSERT INTO MAHASISWA.STATUS_KULIAH VALUES (3, 'Evaluasi studi');
 INSERT INTO MAHASISWA.STATUS_KULIAH VALUES (4, 'Lulus kuliah');
 INSERT INTO MAHASISWA.STATUS_KULIAH VALUES (5, 'Mengundurkan diri');
 INSERT INTO MAHASISWA.STATUS_KULIAH VALUES (6, 'Terdaftar');
 INSERT INTO MAHASISWA.STATUS_KULIAH VALUES (7, 'Terminal kuliah');
 INSERT INTO MAHASISWA.STATUS_KULIAH VALUES (8, 'Tidak terdaftar');

insert into mahasiswa.mahasiswa (nim, nama, angkatan, id_program_studi, id_seleksi, id_cabang, id_status_kuliah)
	select nim, nama, angkatan, case program_studi
	when 'Pendidikan Teknologi Informasi' then 1
	when 'Sistem Informasi' then 2
	when 'Teknik Informatika' then 3
	when 'Teknik Komputer' then 4
	when 'Teknologi Informasi' then 5
	end,
	case seleksi
	when 'SBMPTN' then 1
	when 'SNMPTN' then 2
	when 'SPMK' then 3
	end,
	case cabang
	when 'UB - Kediri' then 1
	when 'UB - Malang' then 2
	end,
	case status_aktif
	when 'Aktif' then 1
	when 'Blokir' then 2
	when 'Evaluasi studi' then 3
	when 'Lulus kuliah' then 4
	when 'Mengundurkan diri' then 5
	when 'Terdaftar' then 6
	when 'Terminal kuliah' then 7
	when 'Tidak terdaftar' then 8
	end
from mhs;
