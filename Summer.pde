class Summer {
  int xAwan1 = -300; // Koordinat X awan 1
  int xAwan2 = 352; // Koordinat X awan 2
  int xAwan3 = 1002; // Koordinat X awan 3
  int xCahaya = 710; // Koordinat X Arah Cahaya Matahari
  int yCahaya = 430; // Koordinat Y Arah Cahaya Matahari
  int warnaAwan;

  void display() {
    if (isHujan) {
      audioRain.pause();
      audioRain.play();
      if (audioRain.isPlaying()) {
        audioSummer.pause();
      }
      background(#06437a);
      // Buat Cahaya Matahari
      float dirY = (yCahaya / float(height) - 0.5) * 2; // Buat Koordinat Y Arah Cahaya
      float dirX = (xCahaya / float(width) - 0.5) * 2; // Buat Koordinat X Arah Cahaya
      directionalLight(255, 255, 255, -dirX, -dirY, -1); // Cahaya Matahari nya menggunakan Directional Light
      yCahaya = 800; // Buat meredupkan cahaya pada objek
      warnaAwan = 100;
      //menampilkan Hujan
      for (int i = 0; i < jumlahHujan; i++) {
        // Membuat efek turun Hujan
        yH[i] += speedH[i];

        // Reset posisi jika melewati batas bawah layar
        if (yH[i] > height) {
          yH[i] = 0;
          xH[i] = random(width);
        }

        // Gambar Tetesan Hujan
        fill(#269dc7);
        push();
        translate(0, 0, 15);
        ellipse(xH[i], yH[i], 5, 50);
        pop();
      }
    } else {
      audioSummer.pause();
      audioSummer.play();
      if (audioSummer.isPlaying()) {
        audioRain.pause();
      }
      if (yCahaya == 800) {
        yCahaya = 430;
      }
      background(#D4F4FC);
      // Buat Matahari
      push();
      noStroke();
      translate(0, 0 -5); // Posisi Matahari
      noStroke();
      fill(255, 255, 0); // Warna Matahari
      circle(1178, 77, 100); // Matahari berbentuk lingkaran
      pop();

      // Buat Cahaya Matahari
      float dirY = (yCahaya / float(height) - 0.5) * 2; // Buat Koordinat Y Arah Cahaya
      float dirX = (xCahaya / float(width) - 0.5) * 2; // Buat Koordinat X Arah Cahaya
      directionalLight(255, 255, 255, -dirX, -dirY, -1); // Cahaya Matahari nya menggunakan Directional Light
      if (xAwan1 > 1088 && xAwan1 < 1220) { // Jika awan 1 menutupi matahari maka cahaya nya akan meredup
        yCahaya+= 2; // Buat meredupkan cahaya
      } else if (xAwan1 > 1400 && xAwan1 < 1532) { // Jika awan 1 mulai pergi dari matahari maka cahaya nya akan menerang kembali
        yCahaya-= 2; // Buat menerangkan cahaya
      }
      if (xAwan2 > 1088 && xAwan2 < 1220) { // Jika awan 2 menutupi matahari maka cahaya nya akan meredup
        yCahaya+= 2; // Buat meredupkan cahaya
      } else if (xAwan2 > 1400 && xAwan2 < 1532) { // Jika awan 2 mulai pergi dari matahari maka cahaya nya akan menerang kembali
        yCahaya-= 2; // Buat menerangkan cahaya
      }
      if (xAwan3 > 1088 && xAwan3 < 1220) { // Jika awan 3 menutupi matahari maka cahaya nya akan meredup
        yCahaya+= 2; // Buat meredupkan cahaya
      } else if (xAwan3 > 1400 && xAwan3 < 1532) { // Jika awan 3 mulai pergi dari matahari maka cahaya nya akan menerang kembali
        yCahaya-= 2; // Buat menerangkan cahaya
      }
      warnaAwan = 255;
    }

    // Buat 3 Awan Putih
    push(); // Sebagai batas awal objek yang akan di gerakkan atau diperbesar
    scale(0.8); // Untuk Memperbesar Ukuran Awan
    // Buat Awan Warna Putih 1
    fill(warnaAwan); // mengubah warna awan menjadi putih
    noStroke();
    beginShape();
    vertex(xAwan1 + 10, 100); // Titik awal awan
    bezierVertex(xAwan1 + 10, 60, xAwan1 + 30, 40, xAwan1 + 70, 60); // Puncak awan
    bezierVertex(xAwan1 + 90, 30, xAwan1 + 130, 30, xAwan1 + 150, 60); // Tepi kanan atas awan
    bezierVertex(xAwan1 + 180, 40, xAwan1 + 220, 40, xAwan1 + 240, 60); // Tepi kanan bawah
    bezierVertex(xAwan1 + 280, 40, xAwan1 + 320, 60, xAwan1 + 340, 80); // Bawah awan
    bezierVertex(xAwan1 + 360, 100, xAwan1 + 340, 120, xAwan1 + 300, 140); // Tepi kiri bawah
    bezierVertex(xAwan1 + 280, 160, xAwan1 + 240, 160, xAwan1 + 200, 140); // Tepi kiri atas
    bezierVertex(xAwan1 + 160, 160, xAwan1 + 120, 140, xAwan1 + 100, 120); // Tengah awan
    bezierVertex(xAwan1 + 70, 140, xAwan1 + 30, 120, xAwan1 + 10, 100); // Tepi kiri atas
    endShape();
    xAwan1 += 1; // Untuk menggerakkan awan ke kanan
    // Kembali ke posisi awal ketika awan mencapai sebelah kanan window atau melebihi panjang window
    if (xAwan1 > width + width*0.4 ) {
      xAwan1 = -400;
    }

    // Buat Awan Warna Putih 2
    beginShape();
    vertex(xAwan2 + 10, 100); // Titik awal awan
    bezierVertex(xAwan2 + 10, 60, xAwan2 + 30, 40, xAwan2 + 70, 60); // Puncak awan
    bezierVertex(xAwan2 + 90, 30, xAwan2 + 130, 30, xAwan2 + 150, 60); // Tepi kanan atas awan
    bezierVertex(xAwan2 + 180, 40, xAwan2 + 220, 40, xAwan2 + 240, 60); // Tepi kanan bawah
    bezierVertex(xAwan2 + 280, 40, xAwan2 + 320, 60, xAwan2 + 340, 80); // Bawah awan
    bezierVertex(xAwan2 + 360, 100, xAwan2 + 340, 120, xAwan2 + 300, 140); // Tepi kiri bawah
    bezierVertex(xAwan2 + 280, 160, xAwan2 + 240, 160, xAwan2 + 200, 140); // Tepi kiri atas
    bezierVertex(xAwan2 + 160, 160, xAwan2 + 120, 140, xAwan2 + 100, 120); // Tengah awan
    bezierVertex(xAwan2 + 70, 140, xAwan2 + 30, 120, xAwan2 + 10, 100); // Tepi kiri atas
    endShape();
    xAwan2 += 1; // Untuk menggerakkan awan ke kanan
    // Kembali ke posisi awal ketika awan mencapai sebelah kanan window atau melebihi panjang window
    if (xAwan2 > width + width*0.4 ) {
      xAwan2 = -400;
    }

    // Buat Awan Warna Putih 3
    beginShape();
    vertex(xAwan3 + 10, 100); // Titik awal awan
    bezierVertex(xAwan3 + 10, 60, xAwan3 + 30, 40, xAwan3 + 70, 60); // Puncak awan
    bezierVertex(xAwan3 + 90, 30, xAwan3 + 130, 30, xAwan3 + 150, 60); // Tepi kanan atas awan
    bezierVertex(xAwan3 + 180, 40, xAwan3 + 220, 40, xAwan3 + 240, 60); // Tepi kanan bawah
    bezierVertex(xAwan3 + 280, 40, xAwan3 + 320, 60, xAwan3 + 340, 80); // Bawah awan
    bezierVertex(xAwan3 + 360, 100, xAwan3 + 340, 120, xAwan3 + 300, 140); // Tepi kiri bawah
    bezierVertex(xAwan3 + 280, 160, xAwan3 + 240, 160, xAwan3 + 200, 140); // Tepi kiri atas
    bezierVertex(xAwan3 + 160, 160, xAwan3 + 120, 140, xAwan3 + 100, 120); // Tengah awan
    bezierVertex(xAwan3 + 70, 140, xAwan3 + 30, 120, xAwan3 + 10, 100); // Tepi kiri atas
    endShape();
    xAwan3 += 1; // Untuk menggerakkan awan ke kanan
    // Kembali ke posisi awal ketika awan mencapai sebelah kanan window atau melebihi panjang window
    if (xAwan3 > width + width*0.4 ) {
      xAwan3 = -400;
    }
    pop(); // Sebagai batas akhir objek yang akan di gerakkan atau diperbesar

    // BUAT GUNUNG KIRI
    push();
    beginShape();
    translate(0, 0, 5);
    noStroke();
    fill(#A2B6E5);
    curveVertex(0, 143);
    curveVertex(0, 143);
    curveVertex(50, 168);
    curveVertex(118, 218);
    curveVertex(214, 255);
    curveVertex(281, 272);
    curveVertex(334, 337);
    curveVertex(425, 333);
    curveVertex(545, 442);
    curveVertex(622, 457);
    curveVertex(709, 492);
    curveVertex(800, 800);
    curveVertex(-5, 800);
    curveVertex(-5, 143);
    curveVertex(-5, 143);
    endShape();
    pop();

    // BUAT GUNUNG KANAN
    push();
    beginShape();
    translate(0, 0, 4);
    noStroke();
    fill(#A2B6E5);
    curveVertex(758, 487);
    curveVertex(758, 487);
    curveVertex(870, 308);
    curveVertex(918, 351);
    curveVertex(1049, 250);
    curveVertex(1120, 312);
    curveVertex(1204, 241);
    curveVertex(1285, 192);
    curveVertex(1300, 730);
    curveVertex(671, 734);
    curveVertex(758, 487);
    curveVertex(758, 487);
    endShape();
    pop();

    // BUAT TANAH KIRI
    push();
    beginShape();
    translate(0, 0, 7);
    noStroke();
    fill(#71D163);
    curveVertex(0, 433);
    curveVertex(0, 433);
    curveVertex(502, 521);
    curveVertex(919, 720);
    curveVertex(920, 800);
    curveVertex(-5, 800);
    curveVertex(-5, 433);
    curveVertex(-5, 433);
    endShape();
    pop();

    // BUAT TANAH KANAN
    push();
    beginShape();
    translate(0, 0, 6);
    noStroke();
    fill(#54AF47);
    curveVertex(600, 557);
    curveVertex(600, 557);
    curveVertex(976, 414);
    curveVertex(1440, 445);
    curveVertex(1323, 763);
    curveVertex(387, 827);
    curveVertex(600, 557);
    curveVertex(600, 557);
    endShape();
    pop();

    // BUAT POHON
    push();
    translate(0, -10, 8);
    fill(#835C1C);
    noStroke();
    quad(295, 463, 315, 463, 315, 715, 295, 715);
    quad(232, 510, 300, 565, 300, 581, 232, 520);
    fill(#54AF47);
    circle(300, 315, 150);
    circle(223, 395, 150);
    circle(410, 357, 140);
    circle(395, 465, 140);
    circle(335, 370, 140);
    fill(#4eaa5f);
    circle(250, 400, 130);
    circle(343, 453, 130);
    circle(160, 453, 130);
    rect(155, 418, 200, 100);
    pop();

    // ATUR POSISI RUMAH
    push();
    translate(930, 330, 8);
    rumah.display();
    pop();
  }
}
