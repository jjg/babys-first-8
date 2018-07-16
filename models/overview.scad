BOX_LENGTH = 100;
BOX_WIDTH = 100;
BOX_HEIGHT = 100;

$fn=75;

// main box
color("gray"){
  cube([BOX_LENGTH,BOX_WIDTH,BOX_HEIGHT]);
}

// speed
translate([0,BOX_WIDTH/2,BOX_HEIGHT/2]){
  rotate([0,-90,0]){
    color("silver"){
      cylinder(r=75/2,h=20);
    }
  }
}

// volume
translate([BOX_LENGTH,BOX_WIDTH/2,BOX_HEIGHT/2]){
  rotate([0,90,0]){
    color("silver"){
      cylinder(r=75/2,h=20);
    }
  }
}

// speaker
translate([BOX_LENGTH/2,0,BOX_HEIGHT/2]){
  rotate([90,0,0]){
    color("black"){
      cylinder(r=70/2,h=5);
    }
  }
}

// synth controls
translate([15,1,BOX_HEIGHT-15]){
  rotate([90,0,0]){
    cylinder(r=10,h=10);
  }
}

translate([BOX_LENGTH-15,1,BOX_HEIGHT-15]){
  rotate([90,0,0]){
    cylinder(r=10,h=10);
  }
}

// steps
// TODO: calculate this offset automatically
translate([8,0,0]){

  // step 1
  translate([(BOX_LENGTH/4)*0,15,0]){
    step();
  }

  // step 2
  translate([(BOX_LENGTH/4)*1,15,0]){
    step();
  }

  // step 3
  translate([(BOX_LENGTH/4)*2,15,0]){
    step();
  }

  // step 4
  translate([(BOX_LENGTH/4)*3,15,0]){
    step();
  }
}


module step(){
  // trigger
  translate([0,0,100]){
    color("blue"){
      cube([10,10,5]);
    }
  }

  // trigger indicator
  translate([5,25,100]){
    color("red"){
      sphere(r=10/2,h=5);
    }
  }

  // in/out switch
  translate([0,43,100]){
    color("black"){
      cube([10,10,5]);
    }
  }

  // level
  translate([5,70,100]){
    color("purple"){
      cylinder(r=15/2,h=5);
    }
  }
}
