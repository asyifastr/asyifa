Feature: Web Update Profile City Address

Background: User login dengan email terdaftar

Given : User akses homepage
And klik icon Profile

Scenario: User memperbarui kota domisili

When user klik kolom kota
And user memilih kota domisili
And user klik "Submit"
Then user mendapatkan pesan "Nama kota berhasil diperbaharui"
And nama kota terbaru muncul di halaman profil