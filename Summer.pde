class Summer {
  int xAwan1 = 102; // Koordinat X awan 1
  int xAwan2 = 702; // Koordinat X awan 2
  int xAwan3 = 1302; // Koordinat X awan 3
  
  void display() {
    background(#69adff);
    
    // Buat kasih keterangan posisi mouse
    textSize(20);
    fill(0);
    text("x: "+mouseX+" y: "+mouseY, 200, 200);
  
    // Buat 3 Awan Putih
    push(); // Sebagai batas awal objek yang akan di gerakkan atau diperbesar
    scale(0.8); // Untuk Memperbesar Ukuran Awan
    // Buat Awan Warna Putih 1
    fill(255); // mengubah warna awan menjadi putih
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
    translate(0,0,5);
    fill(0,150,0);
    strokeWeight(3);
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
    translate(0,0,4);
    fill(0,150,0);
    strokeWeight(3);
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
    translate(0,0,7);
    fill(0,255,0);
    strokeWeight(3);
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
    translate(0,0,6);
    fill(0,255,0);
    strokeWeight(3);
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
  }
}
