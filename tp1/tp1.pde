PImage mifoto;

void setup() {
  size(800, 400);
  mifoto = loadImage("mural.jpg");
}

void draw() {
  background(255);
  image(mifoto, 0, 0, 400, 400);
  
noStroke ();//gris claro del fondo
fill(148,160,184);
rect( 400, 0, 400, 210);

noStroke ();//persona 1 iz
fill(0);
rect( 417, 173, 24, 200);
ellipse( 429, 159, 15, 28); 
triangle( 436, 173, 444, 174, 446, 150);
triangle( 443, 171, 437, 171, 441, 187);
triangle( 446, 160, 445, 119, 442, 120);
triangle(446, 160, 444, 139, 443, 156);
ellipse( 441, 116, 8, 10);


noStroke ();//persona 2 iz
fill(0);
rect( 452, 173, 26, 200);
ellipse( 464, 159, 15, 28); 
triangle( 479, 173, 480, 150,471, 174);
triangle( 480, 152, 474, 123, 470, 123);
triangle( 480, 152, 476, 161, 475, 137);
ellipse( 470, 120, 8, 10);

noStroke ();//persona 3 iz
fill(0);
rect( 482, 182, 18, 200);
ellipse( 490, 170, 12, 24); 
triangle(500, 183, 497, 183, 505, 161 );
triangle( 505, 162, 502, 144, 500, 144);
ellipse( 501,144, 5, 7);

noStroke ();//persona 4 iz
fill(0);
ellipse(518, 209, 12, 14); 
ellipse(507, 194, 5, 7);
ellipse(529, 194, 5, 7);
triangle(506, 194, 508, 194, 505, 210);
triangle(505, 214, 507, 214, 506, 197);
triangle( 531, 212,526, 209, 528, 193);

noStroke ();//grupo de 3 derecha
fill(0);
rect( 680, 175, 77, 50);
ellipse( 690, 153, 13, 27); 
ellipse(715, 155, 13, 27); 
ellipse(746, 153, 13, 27); 
triangle(689, 160, 680, 176, 700, 177);
triangle(715, 163, 701, 175, 728, 177);
triangle( 743, 155, 757, 177, 735, 177);
triangle(682, 173, 680, 184, 673, 163);
triangle(673, 163, 676, 129, 682, 128);
ellipse(678, 129, 8, 10);
rect( 766, 180, 14, 50);
ellipse(773, 173, 13, 27);

noStroke ();//persona 2 derecha
fill(0);
rect( 651, 163, 15, 200);
ellipse( 659, 154, 15, 20); 
triangle( 651, 164, 650, 168, 651, 132);
triangle( 664, 163, 664, 169, 667, 134);
triangle( 649, 147, 652, 130, 654, 130);
triangle(666, 145, 666, 131, 663, 131);
ellipse( 653, 131, 5, 7);
ellipse( 663, 133, 5, 7);

noStroke ();//persona 1 derecha
fill(0);
rect( 626, 177, 13, 200);
ellipse(631, 168, 15, 20); 
triangle( 629, 178, 626, 186, 618, 187);
triangle( 619, 186, 622, 184, 614, 171);
triangle(611, 166, 626, 138, 620, 152);
ellipse(614, 168, 5, 10);

noStroke ();//bandera grande
fill(131, 42, 90);
quad(619, 153, 626, 139, 635, 139, 627, 152);
quad(632, 141, 627, 150, 637, 153, 640, 143);
quad(636, 150, 640, 143, 650, 138, 646, 155);

noStroke ();//medio persona
fill(0);
rect( 583, 183, 17, 200);
ellipse( 594, 171, 15, 25); 
triangle( 588, 184, 582, 185, 578, 162);
triangle( 578, 162, 582, 139, 587, 139);
ellipse(584, 138, 8, 10);

noStroke ();//persona 5 iz
fill(0);
rect( 538, 187, 10, 200);
ellipse( 544, 178, 10, 20); 
triangle( 545, 187, 551, 189, 546, 194);
triangle( 540, 188, 537, 193, 532, 171);
triangle( 532, 171, 534, 155, 539, 154);
ellipse(537, 154, 5, 7);

noStroke ();//persona 6 iz
fill(0);
rect( 550, 188, 10, 200);
ellipse( 555, 180, 10, 20); 

noStroke ();//extras
fill(0);
ellipse( 573, 196, 6, 10); 
triangle(570, 196, 574, 196, 572, 219);
triangle(643, 198, 647, 197, 644, 225);
triangle(669, 197, 676, 195, 673, 215);
triangle(622, 198, 618, 198, 617, 218);
triangle(611, 197, 608, 197, 604, 213);
ellipse(672, 192 , 9, 15);
ellipse( 644, 194, 5, 10);
ellipse( 620, 194, 5, 10);
ellipse(609, 194, 5, 10);
ellipse(562, 210, 7, 10);

noStroke ();//bandera chikita jsjs
fill(142, 56, 69);
quad(530, 200, 531, 194, 537, 196, 535, 206);

noStroke ();//celeste del fondo
fill(90,144,191);
rect( 400, 210, 400, 200);

noStroke ();//zapatilla
fill(40, 99, 155);
rect( 539, 270, 40, 60);
rect( 539, 307, 80, 30);
triangle(572, 309, 617, 308, 576, 272);

noStroke();//lo gris de las zapas azulesss
fill(131, 138, 152);
triangle(617, 338, 618, 308, 653, 338);
triangle(648, 335, 641, 314, 618, 310);
rect(539, 337, 110, 10);
triangle(593, 287, 583, 291, 584, 294);
triangle(599, 295, 593, 301, 597, 303);
triangle(610, 301, 603, 310, 608, 311);
triangle(563, 209, 570, 208, 569, 274);

noStroke();//zapas rojas
fill(106, 59, 75);
rect(438, 302, 30, 30);
rect(438, 317, 60, 15);
triangle(466, 320, 465, 306, 495, 319);

noStroke();//lo gris de las zapas rojass
fill(131, 138, 152);
triangle(495, 317, 497, 331, 510, 331);
triangle(507, 329, 504, 321, 496, 318);
rect(438, 330, 72, 5);
triangle(474, 310, 470, 315, 472, 315);
triangle(482, 313, 482, 318, 486, 319);
triangle(457, 210, 460, 210, 461, 306);

noStroke();// zapas violeta raro
fill(120, 44, 90);
rect( 725, 266, 30, 30);
rect(695, 282, 30, 14);
triangle(727, 282, 726, 262, 696, 283);

noStroke();//gris de violeta
fill(131, 138, 152);
triangle(695, 295, 694, 282, 682, 293);
triangle(680, 292, 684, 285, 695, 283);
rect(682, 291, 73, 6);
triangle(716, 269, 721, 272, 716, 275);
triangle(704, 276, 714, 278, 712, 280);
triangle(730, 208, 737, 208, 732, 263);

noStroke();//nubes
fill(225, 225, 225);
rect(428, 243, 20, 5);
rect(415, 347, 20, 5);
rect(501, 258, 20, 5);
rect(576, 372, 20, 5);
rect(602, 384, 20, 5);
rect(671, 318, 20, 5);
rect(611, 254, 20, 5);
rect(732, 380, 20, 5);

noStroke ();//franja gris del fondo 1
fill(134,146,170);
rect( 400, 0, 15, 400);

noStroke ();//franja gris del fondo 2
fill(134,146,170);
rect( 400, 0, 400, 27);

noStroke ();//franja gris del fondo 3
fill(134,146,170);
rect( 785, 0, 15, 400);

noStroke ();//rectangulo rojo
fill(146,58,72);
rect( 480, 50, 250, 55);

noStroke();//letras del cartel
fill(0);
ellipse(503, 80, 30,50);
fill( 146, 58, 72);
ellipse(511, 80, 40, 30);
rect(508, 54, 10, 30);
fill(0);
rect(515, 54, 5, 50);
quad(519, 78, 519, 83, 535, 102, 540, 102);
triangle(520, 54, 536, 65, 534, 71);
triangle(516, 75, 533, 70, 529, 64);
ellipse(561, 77, 30, 50);
fill(146, 58, 72);
ellipse(561, 75, 20, 40);
fill(0);
rect(578, 54, 5, 52);
rect(600, 55, 5, 52);
triangle(580, 58, 580, 65, 591, 89);
triangle(601, 60, 600, 68, 589, 85);
quad(610, 105, 615, 105, 633, 56, 628, 63);
quad(630, 57, 629, 66, 642, 103, 637, 103);
triangle(617, 87, 626, 86, 636, 87);
rect(644, 60, 5, 47);
rect(662, 60, 5, 47);
triangle(646, 63, 664, 90, 662, 104);
rect(645, 50, 18, 2);
ellipse(683, 84, 20, 50);
fill(146, 58, 72);
ellipse(683, 84, 10, 30);
fill(0);
rect(697, 60, 5, 43);
rect(720, 60, 5, 43);
triangle(698, 65, 724, 89, 722, 99);

noStroke();//letras sueltas
fill(0);
rect(439, 366, 4, 20);
triangle(440, 364, 450, 373, 450, 376);
triangle(449, 374, 449, 376, 440, 376);
rect(457, 366, 4, 20);
triangle(469, 384, 458, 374, 458, 376);
triangle(457, 376, 458, 378, 468, 370);
triangle(466,371, 467, 372, 459, 366);
ellipse(479, 378, 10, 23);
fill(90,144,191);
ellipse(479, 378, 6, 10);
fill(0);
rect(492, 367, 5, 20);
rect(504, 367, 5, 20);
rect(495, 376, 10, 5);
rect(517, 367, 5, 20);
ellipse(518, 362, 7, 8);
rect(530, 364, 5, 24);
triangle(535, 366, 535, 370, 547, 372);
triangle(534, 378, 534, 379, 547, 372);
triangle(534, 378, 535, 383, 545, 384);
triangle(530, 389, 542, 385, 539, 384);
rect(552, 367, 5, 20);
ellipse(555, 362, 7, 8);
rect(563, 365, 5, 22);
triangle(568, 367, 578, 377, 568, 372);
triangle(568, 389, 568, 383, 578, 377);
ellipse(590, 377, 10, 23);
fill(90,144,191);
ellipse(590, 377, 6, 10);
fill(0);
ellipse(627, 378, 10, 23);
fill(90,144,191);
ellipse(627, 378, 6, 10);
fill(0);
rect(636, 368, 5, 22);
rect(637, 385, 10, 5);
triangle(650, 371, 655,372, 658, 389);
triangle(668, 372, 665, 372, 657, 387);
rect(671, 368, 5, 20);
ellipse(674, 361, 7, 8);
rect(684, 366, 5, 22);
triangle(689, 367, 689, 371, 700, 378);
triangle(689, 387, 689, 384, 700, 378);
quad(702, 388, 706, 388, 706, 364, 709, 367);
quad(706, 364, 709, 367, 718, 388, 720, 388);
rect(707, 378, 7, 3);
rect(726, 366, 5, 22);
triangle(732, 366, 742, 372, 732, 369);
triangle(728, 378, 728, 381, 742, 372);
triangle(728, 381, 728, 384, 742, 388);
rect(461, 254, 20, 4);
quad(461, 254, 464, 254, 480, 235, 477, 235);
triangle(479, 237, 469, 227, 472, 227);
triangle(469, 227, 472, 227, 461, 235);
ellipse(493, 245, 11, 33);
fill(90,144,191);
ellipse(493, 245, 9, 27);
fill(0);
quad(503, 259, 507, 259,512, 229, 515, 229);
quad(517, 259, 520, 259, 512, 229, 515, 229);
rect(509, 245, 7, 4);
rect(523,231, 4, 30);
rect(531, 231, 4, 30);
triangle(528, 236, 530, 238, 532, 257);
rect(528, 222, 7, 2);
ellipse(545, 245, 11, 30);
fill(90,144,191);
ellipse(545, 245, 7, 25);
fill(0);
triangle(554, 261, 554, 257, 564, 251);
triangle(564, 251, 554, 247, 554, 245);
triangle(554, 245, 554, 247, 562, 234);
rect(617, 260, 15, 3);
triangle(617, 264,619, 264, 631, 238);
triangle(631, 238, 620, 236, 620, 239);
triangle(621, 238, 622, 239, 615, 246);
ellipse(642, 248, 7, 28);
fill(90,144,191);
ellipse(642, 248, 4, 24);
fill(0);
ellipse(656, 246, 7, 28);
fill(90,144,191);
ellipse(656, 246, 4, 28);
fill(0); 
rect(673, 233, 4, 28);
rect(665, 246, 9, 3);
triangle(666, 247, 668, 247, 675, 234);
rect(681, 243, 5, 3);
rect(694, 260, 15, 3);
triangle(695, 260, 698, 260, 706, 237);
triangle(704, 242, 704, 244, 698, 236);
triangle(698, 237, 692, 242, 690, 242);
ellipse(716, 248, 7, 28);
fill(90,144,191);
ellipse(716, 248, 4, 24);
fill(0);
rect(724, 256, 15, 3); 
triangle(725, 254, 728, 254, 738, 236);
triangle(738, 236, 728, 232,729, 234);
rect(758, 232, 5, 28);
rect(747, 246, 13, 4);
triangle(749, 246, 751, 246, 755, 235);

}
