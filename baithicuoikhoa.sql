create database quanlytrandau
use quanlytrandau

create table CauThu(
MaCauThu char(2) primary key,
TenCauThu char(50),
NgaySinh date,
Phai boolean,
NoiSinh char(50)
)
SET SQL_SAFE_UPDATES = 0;

create table ThiDau(
MaDoi char(2) primary key,
NgayThiDau date,
HieuSo int(1),
KetQua int(1)
)

drop table ThiDau

create table ThiDau(
MaDoi char(2),
NgayThiDau date,
HieuSo int(1),
KetQua int(1)
)
create table Penelty(
MaPhat char(2) primary key,
MaCT char(2),
NgayPhat date,
SoLanPhat int(1),
TienPhat decimal(15,2),
LoaiThe char(1)
)

alter table Penelty add constraint FK_Penelty_MaCT foreign key (MaCT) references CauThu(MaCauThu);

INSERT INTO CauThu VALUES ('01', 'Huynh Duc', '7194/09/12', 1, 'Tp.HCM');
INSERT INTO CauThu VALUES ('02', 'Hong Son', '1973/05/10', 1, 'Ha Noi');
INSERT INTO CauThu VALUES ('03', 'Thanh Nam', '1978/12/25', 1, 'Nam Dinh');
INSERT INTO CauThu VALUES ('04', 'Bao Khanh', '1980/12/01', 1, 'Ha Noi');
INSERT INTO CauThu VALUES ('05', 'Duc Thang', '1976/11/15', 1, 'Ha Noi');

INSERT INTO ThiDau VALUES ('A1', '2004/12/22', 2, 1);
INSERT INTO ThiDau VALUES ('A1', '2005/10/26', 1, 0);
INSERT INTO ThiDau VALUES ('A3', '2005/10/25', 0, null);
INSERT INTO ThiDau VALUES ('A5', '2005/10/10', 3, 1);
INSERT INTO ThiDau VALUES ('B2', '2004/03/08', 1, 1);
INSERT INTO ThiDau VALUES ('B2', '2005/08/19', 3, 0);
INSERT INTO ThiDau VALUES ('C1', '2005/05/19', 1, 1);
INSERT INTO ThiDau VALUES ('C2', '2004/10/30', 2, 0);

INSERT INTO Penelty VALUES ('P1', '01', '2004/12/22', 2, 250000, 'V');
INSERT INTO Penelty VALUES ('P2', '01', '2005/08/19', 1, 450000, 'D');
INSERT INTO Penelty VALUES ('P3', '02', '2005/10/10', 2, 250000, 'V');
INSERT INTO Penelty VALUES ('P4', '02', '2005/10/26', 1, 100000, 'V');
INSERT INTO Penelty VALUES ('P5', '03', '2005/10/25', 1, 450000, 'D');
