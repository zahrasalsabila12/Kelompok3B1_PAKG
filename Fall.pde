class Fall{
  float cloudX; // Inisialisasi posisi awan
  float CloudSpeed = 0.2; // Kecepatan pergerakan awan
  //inisialisasi jumlah salju
  
  void display(){
    smooth(2);
    noStroke();
    
    background(#bef7e4);
    
    //menampilkan daun gugur
    for (int i = 0; i < jumlahDaunGugur; i++) {
      // Membuat efek turun salju
      y[i] += speed[i];

      // Reset posisi jika melewati batas bawah layar
      if (y[i] > height) {
        y[i] = 0;
        x[i] = random(width);
      }

      // Gambar Daun Gugur
      fill(#ddc201);
      push();
      translate(0,0,8);
      ellipse(x[i], y[i], 20, 5);
      pop();
    }

    // Pergerakan awan
    cloudX += CloudSpeed;

    // Jika awan mencapai batas kanan kanvas, reset posisinya ke luar kanvas sebelah kiri
    if (cloudX > width) {
      cloudX = -200;
    }
    
    // Gambar awan di posisi cloudX
    cloud (cloudX, 30);  
    
    //gunung oren
    noStroke();
    fill(#dd6b35);
    beginShape();
    curveVertex(0, 260);
    curveVertex(0, 260);
    curveVertex(100, 432);
    curveVertex(175, 375);
    curveVertex(303, 578);
    curveVertex(394, 493);
    curveVertex(520, 604);
    curveVertex(590, 560);
    curveVertex(680, 635);
    curveVertex(330, 695);
    curveVertex(0, 680);
    curveVertex(0, 680);
    endShape();
    
    // gunung oren
    noStroke();
    fill(#dd6b35);
    beginShape();
    curveVertex(1280, 310);
    curveVertex(1280, 310);
    curveVertex(1175, 462);
    curveVertex(1096, 380);
    curveVertex(955, 553);
    curveVertex(884, 476);
    curveVertex(714, 682);
    curveVertex(1280, 720);
    curveVertex(1280, 720);
    endShape();
    
    //bukit
    noStroke();
    fill(#d39d09);
    beginShape();
    curveVertex(1280, 562);
    curveVertex(1280, 562);
    curveVertex(1037, 578);
    curveVertex(804, 601);
    curveVertex(337, 702);
    curveVertex(1280, 720);
    curveVertex(1280, 720);
    endShape();
    
    //bukit
    noStroke();
    fill(#ba8100);
    beginShape();
    curveVertex(0, 610);
    curveVertex(0, 610);
    curveVertex(392, 625);
    curveVertex(611, 643);
    curveVertex(1062, 720);
    curveVertex(0, 720);
    curveVertex(0, 720);
    endShape();
    
    //bunga gugur
    noStroke();
    fill(#ddc201);
    circle(25, 637, 5);
    circle(70, 662, 5);
    circle(27, 700, 5);
    circle(70, 662, 5);
    circle(129, 639, 5);
    circle(132, 689, 5);
    circle(84, 705, 5);
    circle(175, 663, 5);
    circle(205, 702, 5);
    circle(204, 634, 5);
    circle(231, 658, 5);
    circle(277, 636, 5);
    circle(275, 699 , 5);
    circle(329, 637, 5);
    circle(345, 701, 5);
    circle(357, 659, 5);
    circle(387, 641, 5);
    circle(411, 699, 5);
    circle(422, 667, 5);
    circle(467, 641, 5);
    circle(470, 690, 5);
    circle(502, 668, 5);
    circle(555, 650, 5);
    circle(535, 706, 5);
    circle(587, 681, 5);
    circle(205, 702, 5);
    circle(642, 663, 5);
    circle(602, 705, 5);
    circle(665, 695, 5);
    circle(205, 702, 5);
    circle(720, 675, 5);
    circle(765, 705, 5);
    circle(830, 695, 5);
    circle(768, 670, 5);
    circle(879, 709, 5);
    circle(924, 698, 5);
    circle(983, 703, 5);
    push();
    translate(30,10);
    circle(25, 637, 5);
    circle(70, 662, 5);
    circle(27, 700, 5);
    circle(70, 662, 5);
    circle(129, 639, 5);
    circle(132, 689, 5);
    circle(84, 705, 5);
    circle(175, 663, 5);
    circle(205, 702, 5);
    circle(204, 634, 5);
    circle(231, 658, 5);
    circle(277, 636, 5);
    circle(275, 699 , 5);
    circle(329, 637, 5);
    circle(345, 701, 5);
    circle(357, 659, 5);
    circle(387, 641, 5);
    circle(411, 699, 5);
    circle(422, 667, 5);
    circle(467, 641, 5);
    circle(470, 690, 5);
    circle(502, 668, 5);
    circle(555, 650, 5);
    circle(535, 706, 5);
    circle(587, 681, 5);
    circle(205, 702, 5);
    circle(642, 663, 5);
    circle(602, 705, 5);
    circle(665, 695, 5);
    circle(205, 702, 5);
    circle(720, 675, 5);
    circle(765, 705, 5);
    circle(830, 695, 5);
    circle(768, 670, 5);
    circle(879, 709, 5);
    circle(924, 698, 5);
    circle(983, 703, 5);
    pop();
    push();
    translate(50,15);
    circle(25, 637, 5);
    circle(70, 662, 5);
    circle(27, 700, 5);
    circle(70, 662, 5);
    circle(129, 639, 5);
    circle(132, 689, 5);
    circle(84, 705, 5);
    circle(175, 663, 5);
    circle(205, 702, 5);
    circle(204, 634, 5);
    circle(231, 658, 5);
    circle(277, 636, 5);
    circle(275, 699 , 5);
    circle(329, 637, 5);
    circle(345, 701, 5);
    circle(357, 659, 5);
    circle(387, 641, 5);
    circle(411, 699, 5);
    circle(422, 667, 5);
    circle(467, 641, 5);
    circle(470, 690, 5);
    circle(502, 668, 5);
    circle(555, 650, 5);
    circle(535, 706, 5);
    circle(587, 681, 5);
    circle(205, 702, 5);
    circle(642, 663, 5);
    circle(602, 705, 5);
    circle(665, 695, 5);
    circle(205, 702, 5);
    circle(720, 675, 5);
    circle(765, 705, 5);
    circle(830, 695, 5);
    circle(768, 670, 5);
    circle(879, 709, 5);
    circle(924, 698, 5);
    circle(983, 703, 5);
    pop();
    
    //pohon
    fill(#835C1C);
    quad(295, 463, 315, 463, 315, 715, 295, 715);
    quad(232, 510, 300, 565, 300, 581, 232, 520);
    fill(#ddc201);
    push();
    translate(50,0);
    circle(250, 400, 130);
    circle(343, 453, 130);
    circle(160, 453, 130);
    rect(155, 418, 200, 100);
    pop();
    
    // ATUR POSISI RUMAH
    push();
    translate(930,420,8);
    rumah.display();
    pop();
  }
  
   void cloud(float x, float y) {
    //awan
    fill(#effef9);
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

    fill(#effef9);
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

    fill(#effef9);
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

    fill(#effef9);
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
