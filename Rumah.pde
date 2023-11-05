class Rumah {
  void display() {
    // Bagian Kiri Rumah
    noStroke();
    beginShape();
    fill(#eacd96);
    vertex(27, 247);
    vertex(27, 174);
    vertex(99, 90);
    vertex(171, 174);
    vertex(171, 247);
    vertex(27, 247);
    endShape();

    // Hiasan Bagian Kiri Rumah
    // Kotak oren
    beginShape();
    fill(#df9250);
    vertex(41, 247);
    vertex(41, 182);
    vertex(156, 182);
    vertex(156, 247);
    endShape();

    // Putih lancip
    beginShape();
    fill(#eacd96);
    vertex(58, 247);
    vertex(58, 202);
    vertex(73, 190);
    vertex(86, 202);
    vertex(99, 190);
    vertex(111, 202);
    vertex(122, 190);
    vertex(138, 202);
    vertex(138, 247);
    endShape();

    // Kotak Lancip 3 Biji
    beginShape();
    fill(#67472f);
    vertex(64, 241);
    vertex(64, 205);
    vertex(73, 197);
    vertex(82, 205);
    vertex(82, 241);
    vertex(64, 241);
    endShape();
    push();
    beginShape();
    translate(25, 0);
    fill(#67472f);
    vertex(64, 241);
    vertex(64, 205);
    vertex(73, 197);
    vertex(82, 205);
    vertex(82, 241);
    vertex(64, 241);
    endShape();
    pop();
    push();
    beginShape();
    translate(50, 0);
    fill(#67472f);
    vertex(64, 241);
    vertex(64, 205);
    vertex(73, 197);
    vertex(82, 205);
    vertex(82, 241);
    vertex(64, 241);
    endShape();
    pop();

    // Kotak Kiri Oren
    beginShape();
    fill(#df9250);
    vertex(46, 153);
    vertex(75, 153);
    vertex(75, 174);
    vertex(27, 174);
    endShape();

    // Atas Lancip Oren
    beginShape();
    fill(#df9250);
    vertex(52, 145);
    vertex(98, 88);
    vertex(145, 145);
    vertex(117, 145);
    vertex(105, 134);
    vertex(96, 141);
    vertex(86, 134);
    vertex(74, 145);
    vertex(52, 145);
    endShape();

    // Kotak Kanan Oren
    beginShape();
    fill(#df9250);
    vertex(152, 153);
    vertex(117, 153);
    vertex(117, 174);
    vertex(170, 174);
    endShape();

    // Kotak Cokelat Lancip Atas 2 Biji
    beginShape();
    fill(#67472f);
    vertex(80, 174);
    vertex(80, 147);
    vertex(87, 142);
    vertex(93, 147);
    vertex(93, 174);
    vertex(80, 174);
    endShape();
    push();
    beginShape();
    translate(19, 0);
    fill(#67472f);
    vertex(80, 174);
    vertex(80, 147);
    vertex(87, 142);
    vertex(93, 147);
    vertex(93, 174);
    vertex(80, 174);
    endShape();
    pop();

    // ATAP LANCIP KIRI RUMAH
    push();
    translate(0, 0, 2);
    beginShape();
    fill(#d65723);
    vertex(11, 168);
    vertex(99, 63);
    vertex(187, 170);
    vertex(174, 179);
    vertex(99, 90);
    vertex(25, 179);
    vertex(11, 168);
    endShape();
    pop();

    // CEROBONG KIRI ATAS
    beginShape();
    fill(#be4628);
    vertex(41, 132);
    vertex(41, 95);
    vertex(44, 95);
    vertex(44, 66);
    vertex(41, 66);
    vertex(41, 57);
    vertex(68, 57);
    vertex(68, 66);
    vertex(64, 66);
    vertex(64, 95);
    vertex(68, 95);
    vertex(68, 100);
    vertex(41, 132);
    endShape();

    // ATAP KANAN RUMAH
    beginShape();
    fill(#a33622);
    vertex(116, 83);
    vertex(274, 83);
    vertex(274, 163);
    vertex(182, 163);
    vertex(116, 83);
    endShape();

    // KOTAK KANAN RUMAH
    beginShape();
    fill(#db9654);
    vertex(171, 174);
    vertex(171, 247);
    vertex(274, 247);
    vertex(274, 163);
    vertex(182, 163);
    vertex(116, 82);
    endShape();

    // PINTU COKELAT KANAN RUMAH
    beginShape();
    fill(#63472e);
    vertex(217, 247);
    vertex(217, 216);
    vertex(231, 205);
    vertex(245, 216);
    vertex(245, 247);
    vertex(217, 247);
    endShape();

    // HIASAN PUTIH DEKAT PINTU COKELAT KANAN RUMAH
    beginShape();
    fill(#eacd96);
    vertex(199, 247);
    vertex(199, 188);
    vertex(208, 178);
    vertex(255, 178);
    vertex(263, 188);
    vertex(263, 247);
    vertex(255, 247);
    vertex(255, 208);
    vertex(231, 190);
    vertex(207, 208);
    vertex(207, 247);
    vertex(199, 247);
    endShape();
    fill(#db9654);
    triangle(207, 186, 222, 186, 207, 198);
    triangle(240, 186, 255, 186, 255, 198);

    // ATAP LANCIP KANAN RUMAH
    beginShape();
    fill(#d65723);
    vertex(182, 208);
    vertex(231, 149);
    vertex(281, 208);
    vertex(290, 198);
    vertex(231, 127);
    vertex(173, 199);
    vertex(182, 208);
    endShape();

    // CEROBONG KANAN ATAS
    beginShape();
    fill(#be4628);
    vertex(158, 108);
    vertex(158, 95);
    vertex(161, 95);
    vertex(161, 66);
    vertex(158, 66);
    vertex(158, 57);
    vertex(185, 57);
    vertex(185, 66);
    vertex(182, 66);
    vertex(182, 95);
    vertex(185, 95);
    vertex(185, 108);
    vertex(158, 108);
    endShape();
  }
}
