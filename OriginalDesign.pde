byte bitmap_thing[] = {
(byte)0x7E,//(byte)0b01111110,
(byte)0x42,//(byte)0b01000010,
(byte)0x7E,//(byte)0b01111110,
(byte)0x42,//(byte)0b01000010,
(byte)0x42,//(byte)0b01000010,
(byte)0x42,//(byte)0b01000010,
(byte)0x00,//(byte)0b00000000,
(byte)0x00,//(byte)0b00000000,
};

void setup()
{
        char aCharVal;
//      init_size();

}
void draw()
{
        fill(32,12,41);
        //ellipse(50,50,50,50);
        //fill(234,233,123);
        //rect(34,34,43,32);
	init_size();
        display_byte_bitmap(bitmap_thing,8,0,0);

}
void display_byte_bitmap( byte inBMP[], int bmp_charlen, int x_begin, int y_begin ){
                                //RGB
        color pixel_color_black = ((0x00<<16)|(0x00<<8)|(0x00<<0));
        color pixel_color_white = ((0xFF<<16)|(0xFF<<8)|(0xFF<<0));
          
                for(int y_cor=y_begin;y_cor<((bmp_charlen));y_cor++){
                        for(int x_cor=x_begin;x_cor<8;x_cor++){
                                if(((byte)(inBMP[y_cor]) & ((1<<7) >> x_cor))>0){
                                        set(x_cor,y_cor,pixel_color_black);
                                        //set(x_cor,y_cor,#FFF967);
                                } else {
                                        set(x_cor,y_cor,pixel_color_white);
                                        // set(x_cor,y_cor,#01fffd);
                                }
                        }
                }
}

void init_size(){
        size(127,127);
}

