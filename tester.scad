/*

Source:
https://www.sik.dk/Forbruger/Sikkerhed-for-boern-0-3-aar/Er-det-farligt/Test-sikkerheden-med-en-legetoejstester

Den måler 3,17 cm i diameteren, 2,54 cm på den korte side og 5,71 cm på den lange side.

Put legetøjet eller andre små dimser ned i testeren.
Kan dimsen ligge i testeren uden at rage op over kanten, er den farlig for dit barn.
Du må ikke tvinge noget ned i testeren. Uanset hvad du vil teste, skal det altid selv kunne glide ned i testeren uden tvang.

*/

$border = 2;
$diameter = 31.7;
$height = 57.1;

$fn=100;

union () {
  difference () {
    cylinder ($diameter+$border, $diameter/2, $diameter/2);
    translate([-$diameter/2-$border,-$diameter/2-$border,0])
      rotate([0,-45,0])
        cube([$diameter*2,$diameter+$border*2,$diameter]);
  }
  difference() {
    cylinder ($height+$border, $diameter/2+$border, $diameter/2+$border);
    cylinder ($height+$border*2, $diameter/2, $diameter/2);
  }
}