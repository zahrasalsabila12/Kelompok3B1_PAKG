class Winter {
  float cloudX; // Inisialisasi posisi awan
  float CloudSpeed = 0.0002; // Kecepatan pergerakan awan
  //inisialisasi jumlah salju
  int numSnowflakes = 50;
  float[] x = new float[numSnowflakes];
  float[] y = new float[numSnowflakes];
  //inisialisasi kecepatan salju turun
  float[] speed = new float[numSnowflakes];

  void display() {
    smooth(2);
    noStroke();
    //mengatur titik dan kecepatan salju
    for (int i = 0; i < numSnowflakes; i++) {
      x[i] = random(width);
      y[i] = random(height);
      speed[i] = random(1, 3);
    }

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
    cloudX += CloudSpeed;

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
    vertex(1280, 720);
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
    vertex(1280, 720);
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
    vertex(1280, 720);
    vertex(1280, 676);
    endShape();

    fill(#ccdbfd);
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

    // ATUR POSISI RUMAH
    push();
    translate(930, 420, 8);
    rumah.display();
    pop();

    //menampilkan saju
    for (int i = 0; i < numSnowflakes; i++) {
      // Membuat efek turun salju
      y[i] += speed[i];

      // Reset posisi jika melewati batas bawah layar
      if (y[i] > height) {
        y[i] = 0;
        x[i] = random(width);
      }

      // Gambar snowflake
      fill(255);
      ellipse(x[i], y[i], 10, 10);
    }

    //pohon
    fill(#7f4f24);
    beginShape();
    vertex(170, 638);
    vertex(175, 627);
    vertex(178, 529);
    vertex(171, 506);
    curveVertex(171, 506);
    curveVertex(171, 506);
    curveVertex(162, 500);
    curveVertex(152, 487);
    curveVertex(136, 459);
    curveVertex(136, 459);
    vertex(125, 459);
    vertex(119, 452);
    vertex(126, 456);
    vertex(136, 454);
    vertex(124, 443);
    vertex(115, 419);
    vertex(107, 421);
    vertex(99, 417);
    vertex(107, 418);
    vertex(112, 413);
    vertex(86, 396);
    vertex(92, 394);
    vertex(98, 397);
    curveVertex(98, 397);
    curveVertex(98, 397);
    curveVertex(95, 392);
    curveVertex(94, 383);
    curveVertex(98, 368);
    curveVertex(98, 368);

    curveVertex(98, 368);
    curveVertex(98, 368);
    curveVertex(98, 384);
    curveVertex(102, 395);
    curveVertex(109, 402);
    curveVertex(109, 402);
    vertex(114, 376);
    vertex(115, 406);
    vertex(124, 424);
    vertex(128, 439);
    vertex(142, 452);
    vertex(146, 447);
    vertex(156, 473);
    vertex(173, 481);
    vertex(171, 450);
    vertex(148, 430);
    vertex(132, 381);
    vertex(124, 373);
    vertex(124, 358);
    vertex(129, 373);
    vertex(137, 379);
    vertex(140, 377);
    vertex(159, 422);
    vertex(164, 436);
    vertex(171, 440);
    vertex(176, 438);
    vertex(178, 421);
    vertex(187, 363);
    vertex(185, 361);
    vertex(179, 344);
    vertex(170, 388);
    vertex(180, 342);
    vertex(180, 325);
    vertex(185, 343);
    vertex(189, 360);
    vertex(191, 363);
    vertex(195, 361);
    vertex(204, 336);
    vertex(197, 366);
    vertex(194, 371);
    vertex(188, 410);
    vertex(195, 404);
    vertex(196, 398);
    vertex(202, 391);
    vertex(201, 405);
    vertex(188, 420);
    vertex(202, 420);
    vertex(210, 414);
    vertex(214, 409);
    vertex(229, 396);
    vertex(243, 352);
    vertex(241, 342);
    vertex(247, 341);
    vertex(247, 350);
    vertex(239, 386);
    vertex(256, 366);
    vertex(260, 359);
    vertex(263, 361);
    vertex(269, 349);
    vertex(274, 351);
    vertex(263, 367);
    vertex(272, 368);
    vertex(272, 373);
    vertex(259, 373);
    vertex(226, 411);
    vertex(234, 411);
    vertex(236, 405);
    vertex(246, 400);
    vertex(246, 404);
    vertex(241, 407);
    vertex(236, 415);
    vertex(220, 419);
    vertex(193, 444);
    vertex(191, 476);
    vertex(198, 476);
    vertex(222, 464);
    vertex(225, 458);
    vertex(237, 451);
    vertex(241, 442);
    vertex(252, 433);
    vertex(262, 419);
    vertex(270, 415);
    vertex(270, 423);
    vertex(252, 441);
    vertex(249, 455);
    vertex(256, 451);
    vertex(274, 448);
    vertex(283, 440);
    vertex(289, 425);
    vertex(290, 404);
    vertex(304, 387);
    vertex(305, 364);
    vertex(309, 363);
    vertex(308, 375);
    vertex(314, 368);
    vertex(310, 380);
    vertex(309, 383);
    vertex(316, 382);
    vertex(307, 392);
    vertex(298, 401);
    vertex(296, 405);
    vertex(293, 427);
    vertex(305, 413);
    vertex(314, 408);
    vertex(309, 415);
    vertex(304, 422);
    vertex(317, 422);
    vertex(302, 426);
    vertex(292, 435);
    vertex(278, 451);
    vertex(240, 468);
    vertex(245, 470);
    vertex(248, 476);
    vertex(242, 473);
    vertex(221, 480);
    vertex(200, 505);
    vertex(196, 518);
    vertex(202, 638);
    vertex(191, 640);
    vertex(184, 646);
    vertex(170, 638);
    endShape();

    //cabang ranting pohon
    stroke(#7f4f24);
    line(124, 458, 124, 469);
    line(107, 421, 108, 430);
    line(124, 462, 119, 461);
    line(119, 461, 116, 466);
    line(100, 417, 88, 429);
    line(88, 429, 69, 418);
    line(88, 429, 76, 432);
    line(77, 423, 74, 414);
    line(100, 417, 91, 410);
    line(87, 397, 49, 397);
    line(86, 396, 74, 387);
    line(74, 398, 65, 408);
    line(62, 397, 53, 387);
    line(57, 391, 78, 373);
    line(65, 384, 70, 370);
    line(94, 384, 84, 384);
    line(112, 388, 104, 369);
    line(124, 373, 116, 369);
    line(124, 360, 115, 356);
    line(115, 356, 105, 361);
    line(105, 361, 91, 358);
    line(105, 361, 85, 363);
    line(115, 356, 112, 342);
    line(114, 350, 117, 344);
    line(139, 380, 148, 368);
    line(148, 368, 146, 358);
    line(146, 358, 151, 340);
    line(151, 340, 148, 330);
    line(148, 368, 169, 360);
    line(146, 358, 126, 345);
    line(151, 340, 165, 314);
    line(158, 365, 159, 377);
    line(162, 363, 168, 352);
    line(159, 377, 153, 383);
    line(159, 377, 165, 381);
    line(168, 352, 162, 347);
    line(168, 352, 174, 350);
    line(136, 351, 136, 344);
    line(126, 345, 120, 348);
    line(126, 345, 122, 335);
    line(136, 344, 133, 339);
    line(136, 344, 141, 340);
    line(159, 328, 165, 326);
    line(180, 343, 173, 336);
    line(181, 328, 184, 323);
    line(181, 328, 174, 322);
    line(198, 353, 193, 335);
    line(193, 335, 196, 330);
    line(193, 335, 188, 330);
    line(201, 346, 211, 339);
    line(201, 392, 207, 383);
    line(207, 383, 212, 383);
    line(212, 383, 216, 361);
    line(207, 383, 202, 376);
    line(212, 383, 216, 389);
    line(216, 361, 211, 355);
    line(216, 361, 222, 354);
    line(215, 371, 222, 368);
    line(259, 360, 260, 341);
    line(260, 341, 247, 327);
    line(260, 341, 266, 333);
    line(266, 333, 264, 327);
    line(247, 327, 238, 328);
    line(247, 327, 250, 314);
    line(266, 333, 270, 334);
    line(268, 356, 277, 357);
    line(265, 371, 265, 381);
    line(244, 401, 262, 399);
    line(262, 399, 266, 391);
    line(266, 391, 285, 379);
    line(285, 379, 286, 337);
    line(286, 337, 278, 329);
    line(286, 337, 294, 330);
    line(266, 391, 281, 390);
    line(285, 379, 298, 350);
    line(266, 391, 258, 386);
    line(262, 399, 263, 407);
    line(298, 350, 295, 345);
    line(298, 350, 306, 348);
    line(235, 414, 244, 415);
    line(291, 404, 288, 391);
    line(268, 417, 271, 400);
    line(270, 407, 278, 404);
    noStroke();

    fill(255);
    beginShape();
    vertex(186, 419);
    vertex(202, 418);
    vertex(227, 395);
    vertex(227, 402);
    vertex(205, 424);
    vertex(187, 425);
    vertex(186, 419);
    endShape();

    beginShape();
    vertex(172, 479);
    vertex(154, 468);
    vertex(145, 447);
    vertex(145, 456);
    vertex(155, 479);
    vertex(170, 490);
    vertex(172, 482);
    endShape();

    //salju di pohon dan rumah
    ellipse(202, 343, 10, 10);
    ellipse(161, 324, 10, 10);
    ellipse(135, 342, 10, 10);
    ellipse(98, 362, 10, 10);
    ellipse(134, 378, 10, 10);
    ellipse(72, 374, 10, 10);
    ellipse(92, 392, 10, 10);
    ellipse(180, 324, 10, 10);
    ellipse(72, 417, 10, 10);
    ellipse(218, 349, 10, 10);
    ellipse(265, 329, 10, 10);
    ellipse(289, 331, 10, 10);
    ellipse(288, 387, 10, 10);
    ellipse(308, 359, 10, 10);
    ellipse(247, 315, 10, 10);
    ellipse(312, 408, 10, 10);
    circle(983, 478, 10);
    circle(986, 478, 10);
    circle(990, 478, 10);
    circle(998, 478, 10);
    circle(1099, 475, 10);
    circle(1104, 475, 10);
    circle(1108, 475, 10);
    circle(1115, 475, 10);
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
