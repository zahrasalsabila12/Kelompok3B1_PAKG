class Winter {
  float cloudX; // Inisialisasi posisi awan
  float speed = 0.8; // Kecepatan pergerakan awan

  void display() {
    smooth(2);
    noStroke();

    //backgound
    background(#8e94f2);
    fill(#9fa0ff, 70);
    rect(0, 100, width, 100);
    fill(#ada7ff, 70);
    rect(0, 200, width, 100);
    fill(#bbadff, 70);
    rect(0, 300, width, 100);
    fill(#cbb2fe, 70);
    rect(0, 400, width, 100);
    fill(#dab6fc, 70);
    rect(0, 500, width, 100);
    fill(#ddbdfc, 70);
    rect(0, 600, width, 120);

    // Pergerakan awan
    cloudX += speed;

    // Jika awan mencapai batas kanan kanvas, reset posisinya ke luar kanvas sebelah kiri
    if (cloudX > width) {
      cloudX = -200;
    }

    // Gambar awan di posisi cloudX
    cloud(cloudX, 30);

    //pegunungan
    fill(#ccdbfd);
    beginShape();
    curveVertex(0, 220);
    curveVertex(0, 220);
    curveVertex(99, 395);
    curveVertex(138, 398);
    curveVertex(138, 398);
    curveVertex(138, 398);

    curveVertex(138, 398);
    curveVertex(138, 398);
    curveVertex(168, 359);
    curveVertex(229, 366);
    curveVertex(310, 539);
    curveVertex(310, 539);

    curveVertex(310, 539);
    curveVertex(310, 539);
    curveVertex(331, 563);
    curveVertex(357, 553);
    curveVertex(374, 530);
    curveVertex(374, 530);

    curveVertex(374, 530);
    curveVertex(374, 530);
    curveVertex(403, 486);
    curveVertex(455, 485);
    curveVertex(520, 568);
    curveVertex(520, 568);

    curveVertex(520, 568);
    curveVertex(520, 568);
    curveVertex(542, 583);
    curveVertex(578, 586);
    curveVertex(594, 569);
    curveVertex(594, 569);

    curveVertex(594, 569);
    curveVertex(594, 569);
    curveVertex(621, 549);
    curveVertex(652, 548);
    curveVertex(745, 642);
    curveVertex(745, 642);

    vertex(745, 642);
    vertex(0, 611);
    vertex(0, 220);
    endShape();

    fill(#ccdbfd);
    beginShape();
    curveVertex(812, 600);
    curveVertex(812, 600);
    curveVertex(928, 470);
    curveVertex(972, 462);
    curveVertex(997, 497);
    curveVertex(997, 497);

    curveVertex(997, 497);
    curveVertex(997, 497);
    curveVertex(1014, 528);
    curveVertex(1043, 532);
    curveVertex(1096, 462);
    curveVertex(1096, 462);

    curveVertex(1096, 462);
    curveVertex(1096, 462);
    curveVertex(1159, 363);
    curveVertex(1194, 359);
    curveVertex(1226, 400);
    curveVertex(1226, 400);

    curveVertex(1226, 400);
    curveVertex(1226, 400);
    curveVertex(1250, 432);
    curveVertex(1280, 433);
    curveVertex(1280, 433);
    curveVertex(1280, 433);

    vertex(1280, 433);
    vertex(1280, 600);
    vertex(812, 600);
    endShape();

    //bukit
    fill(#e3f2fd);
    beginShape();
    curveVertex(1280, 551);
    curveVertex(1280, 551);
    curveVertex(1120, 564);
    curveVertex(594, 627);
    curveVertex(361, 704);
    vertex(361, 704);
    vertex(1280, 704);
    vertex(1280, 551);
    endShape();

    fill(#bbdefb, 70);
    beginShape();
    curveVertex(1280, 606);
    curveVertex(1280, 606);
    curveVertex(814, 598);
    curveVertex(594, 627);
    curveVertex(361, 704);
    vertex(361, 704);
    vertex(1280, 704);
    vertex(1280, 590);
    endShape();

    fill(#90caf9, 45);
    beginShape();
    curveVertex(1280, 676);
    curveVertex(1280, 676);
    curveVertex(1058, 640);
    curveVertex(594, 627);
    curveVertex(361, 704);
    vertex(361, 704);
    vertex(1280, 704);
    vertex(1280, 676);
    endShape();
    //image(img, 10, -50);

    fill(#c7f9cc);
    beginShape();
    curveVertex(0, 601);
    curveVertex(0, 601);
    curveVertex(301, 608);
    curveVertex(795, 650);
    curveVertex(1144, 720);
    curveVertex(1144, 720);
    vertex(1144, 720);
    vertex(0, 720);
    vertex(0, 601);
    endShape();


    //ranting pohon
    fill(#7f4f24);
    triangle(115, 442, 103, 408, 123, 448);
    triangle(133, 459, 62, 456, 154, 472);
    //batang pohon
    fill(#7f4f24);
    quad(166, 473, 101, 431, 98, 438, 166, 485);
    quad(175, 493, 259, 452, 264, 456, 175, 505);
    //pohon
    fill(#7f4f24);
    rect(165, 455, 15, 200);
    fill(#582f0e);
    rect(175, 455, 5, 200);
    
    // ATUR POSISI RUMAH
    push();
    translate(930,420,8);
    rumah.display();
    pop();

    //menampilkan posisi koordinat
    fill(255);
    textSize(25);
    text("X: "+mouseX+" Y: "+mouseY, 10, 35);

    //control perpindahan page
    if (key == 'm' || key == 'M') {
      spring.display();
    } else if (key == 'f' || key == 'F') {
      fall.display();
    } else if (key == 's' || key == 'S') {
      winter.display();
    } else if (keyCode == BACKSPACE) {
      SeasonControl.currentSeason = 0;
      SeasonControl.isFirstTimePlayed = true;
      menu.pilih = 1;
      menu.season = 0;
    }
  }
  void cloud(float x, float y) {
    //awan
    fill(#C1D3FE);
    beginShape();
    vertex(602+x, 134+y);
    bezierVertex(565 + x, 118 + y, 502 + x, 168 + y, 599 + x, 178 + y);
    bezierVertex(599 + x, 178 + y, 636 + x, 200 + y, 689 + x, 180 + y);
    bezierVertex(689 + x, 180 + y, 728 + x, 205 + y, 768 + x, 187 + y);
    bezierVertex(768 + x, 187 + y, 842 + x, 203 + y, 892 + x, 179 + y);
    bezierVertex(892 + x, 179 + y, 941 + x, 200 + y, 983 + x, 182 + y);
    bezierVertex(983 + x, 182 + y, 1028 + x, 199 + y, 1085 + x, 185 + y);
    bezierVertex(1085 + x, 185 + y, 1204 + x, 191 + y, 1154 + x, 184 + y);
    bezierVertex(1168 + x, 195 + y, 1221 + x, 181 + y, 1156 + x, 165 + y);
    bezierVertex(1156 + x, 165 + y, 1139 + x, 135 + y, 1095 + x, 146 + y);
    bezierVertex(1095 + x, 146 + y, 1081 + x, 91 + y, 1002 + x, 111 + y);
    bezierVertex(1002 + x, 111 + y, 965 + x, 45 + y, 911 + x, 95 + y);
    bezierVertex(911 + x, 95 + y, 850 + x, -40 + y, 750 + x, 93 + y);
    bezierVertex(750 + x, 93 + y, 714 + x, 76 + y, 684 + x, 115 + y);
    bezierVertex(684 + x, 115 + y, 638 + x, 85 + y, 602 + x, 133 + y);
    endShape();

    fill(#D7E3FC);
    beginShape();
    vertex(821 + x, 263 + y);
    bezierVertex(822 + x, 268 + y, 842 + x, 282 + y, 866 + x, 272 + y);
    bezierVertex(866 + x, 272 + y, 888 + x, 281 + y, 909 + x, 269 + y);
    bezierVertex(909 + x, 269 + y, 946 + x, 284 + y, 982 + x, 267 + y);
    bezierVertex(982 + x, 267 + y, 1010 + x, 282 + y, 1036 + x, 268 + y);
    bezierVertex(1036 + x, 268 + y, 1074 + x, 286 + y, 1114 + x, 271 + y);
    bezierVertex(1114 + x, 271 + y, 1140 + x, 284 + y, 1164 + x, 267 + y);
    bezierVertex(1164 + x, 267 + y, 1193 + x, 282 + y, 1224 + x, 264 + y);
    bezierVertex(1224 + x, 264 + y, 1249 + x, 283 + y, 1275 + x, 261 + y);
    bezierVertex(1275 + x, 261 + y, 1254 + x, 229 + y, 1224 + x, 242 + y);
    bezierVertex(1224 + x, 242 + y, 1204 + x, 214 + y, 1170 + x, 223 + y);
    bezierVertex(1170 + x, 223 + y, 1154 + x, 196 + y, 1129 + x, 204 + y);
    bezierVertex(1129 + x, 204 + y, 1061 + x, 119 + y, 985 + x, 218 + y);
    bezierVertex(985 + x, 218 + y, 959 + x, 193 + y, 939 + x, 224 + y);
    bezierVertex(939 + x, 224 + y, 906 + x, 212 + y, 898 + x, 240 + y);
    bezierVertex(898 + x, 240 + y, 872 + x, 227 + y, 863 + x, 253 + y);
    bezierVertex(863 + x, 253 + y, 840 + x, 241 + y, 822 + x, 268 + y);
    endShape();

    fill(#ABC4FF);
    beginShape();
    vertex(85 + x, 80 + y);
    bezierVertex(85 + x, 80 + y, 5 + x, 88 + y, 72 + x, 125 + y);
    bezierVertex(72 + x, 125 + y, 80 + x, 140 + y, 98 + x, 133 + y);
    bezierVertex(98 + x, 133 + y, 137 + x, 158 + y, 152 + x, 124 + y);
    bezierVertex(152 + x, 124 + y, 175 + x, 137 + y, 190 + x, 114 + y);
    bezierVertex(190 + x, 114 + y, 205 + x, 123 + y, 208 + x, 106 + y);
    bezierVertex(208 + x, 106 + y, 272 + x, 93 + y, 221 + x, 88 + y);
    bezierVertex(221 + x, 88 + y, 201 + x, 46 + y, 169 + x, 77 + y);
    bezierVertex(169 + x, 77 + y, 160 + x, 50 + y, 147 + x, 67 + y);
    bezierVertex(147 + x, 67 + y, 119 + x, 31 + y, 98 + x, 75 + y);
    bezierVertex(98 + x, 75 + y, 89 + x, 67 + y, 85 + x, 80 + y);
    endShape();

    fill(#E2EAFC);
    beginShape();
    vertex(21 + x, 234 + y);
    bezierVertex(21 + x, 234 + y, 0 + x, 268 + y, 47 + x, 271 + y);
    bezierVertex(47 + x, 271 + y, 66 + x, 295 + y, 105 + x, 281 + y);
    bezierVertex(105 + x, 281 + y, 130 + x, 340 + y, 183 + x, 292 + y);
    bezierVertex(183 + x, 292 + y, 200 + x, 306 + y, 216 + x, 289 + y);
    bezierVertex(216 + x, 289 + y, 249 + x, 309 + y, 277 + x, 283 + y);
    bezierVertex(277 + x, 283 + y, 308 + x, 283 + y, 306 + x, 265 + y);
    bezierVertex(306 + x, 265 + y, 316 + x, 268 + y, 320 + x, 259 + y);
    bezierVertex(320 + x, 259 + y, 373 + x, 240 + y, 316 + x, 234 + y);
    bezierVertex(316 + x, 234 + y, 341 + x, 210 + y, 316 + x, 233 + y);
    bezierVertex(316 + x, 233 + y, 300 + x, 204 + y, 278 + x, 222 + y);
    bezierVertex(278 + x, 222 + y, 262 + x, 136 + y, 201 + x, 209 + y);
    bezierVertex(201 + x, 209 + y, 191 + x, 185 + y, 177 + x, 195 + y);
    bezierVertex(177 + x, 195 + y, 141 + x, 120 + y, 106 + x, 201 + y);
    bezierVertex(106 + x, 201 + y, 81 + x, 177 + y, 64 + x, 200 + y);
    bezierVertex(64 + x, 200 + y, 23 + x, 190 + y, 21 + x, 234 + y);
    endShape();
  }
}
