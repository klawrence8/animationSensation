//SLIDER CLASS WHOOOOOOOOOOo

class slider{
  float left;
  float right;
  float top;
  float bottom;
  float curve;
  float wid;
  float ht;
  
  slider(float l, float r, float t, float b, float c, float w, float h){
    left = l;
    right = r;
    top = t;
    bottom = b;
    curve = c;
    wid = w;
    ht = h; 
  }
  
  float getLeft(){
    return left;
  }
  float getRight(){
    return right;
  }
  float getTop(){
    return top;
  }
  float getBot(){
    return bottom;
  }
  float getWidth(){
    return wid;
  }
  float getHeight(){
    return ht;
  }
  void setLeft(float l){
    left = l;
  }
  void setRight(float r){
    right = r;
  }
}
