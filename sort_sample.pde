import controlP5.*;

ControlP5 cp5;
int[] data1 = {4,5,6,3,2,1};


void setup(){
  cp5 = new ControlP5(this);
  size(600,300);
  
  //ボタンの描画
  cp5.addButton("SortStart")
     .setPosition(50,225)
     .setSize(100,50)
     ;
  cp5.addButton("Shuffle")
     .setPosition(250,225)
     .setSize(100,50)
     ;
  cp5.addButton("Close")
     .setPosition(450,225)
     .setSize(100,50)
     ;
}

void draw(){
  
  fade();
  
  //フィールドの描画
  stroke(255);
  line(0,200,600,200);
  for(int i = 0; i < 6 ; i++){
    line(i * 100, 0 , i * 100 , 200);
  }
  
  //配列内の要素の描画
  for(int i = 0; i < data1.length ; i++){
    textSize(50);
    textAlign(CENTER);
    fill(255);
    text(data1[i],i * 100 + 50,100);
  }
}

//バブルソートを行う処理
void bubbleSort(int[] data){
  for(int i = data.length-1 ; i > 0 ; i--) {
      for(int j = 0; j < i ; j++) {
        if(data[j] > data[j + 1]) {
          int tmp = data[j];
          data[j] = data[j + 1];
          data[j + 1] = tmp;
        }
      }
    }
}


void fade(){
  fill(0);
  rect(0,0,600,300);
}

//SortStartボタンが押されたときの処理
public void SortStart(){
  bubbleSort(data1);
}

//Shuffleボタンが押されたときの処理
public void Shuffle(){
  for(int i = 0 ; i < data1.length ; i++){
    int x = (int)random(6) + 1;
    
    data1[i] = x;
  }
}

//Closeボタンが押されたときの処理
public void Close(){
  exit();
}
