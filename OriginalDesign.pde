/*char bitmap_thing[8] = {
0b01111110,
0b01000010,
0b01111110,
0b01000010,
0b01000010,
0b01000010,
0b00000000,
0b00000000,
};*/

void setup()
{
	char aCharVal;
	init_size();
char bitmap_thing[8] = {
0b01111110,
0b01000010,
0b01111110,
0b01000010,
0b01000010,
0b01000010,
0b00000000,
0b00000000,
};

}
void draw()
{
	fill(32,12,41);
	ellipse(50,50,50,50);
	fill(234,233,123);
	rect(34,34,43,32);
	
	display_byte_bitmap(bitmap_thing,8,0,0);

}
void display_byte_bitmap( char inBMP[], char bmp_charlen, char x_begin, char y_begin ){
				//RGB
	color pixel_color_black = ((0xFF<<16)|(0xFF<<8)|(0xFF<<0));
	color pixel_color_white = ((0x000000));
	do {	
		for(int y_cor=y_begin;y_cor<(bmp_charlen-1);y_cor++){
			for(int x_cor=x_begin;x_cor<7;x_cor++){
				if((inBMP[y_cor] & (0x80 >> x_cor))==1){
					set(x_cor,y_cor,pixel_color_black);	
				} else {
					set(x_cor,y_cor,pixel_color_white);
				}
			} 
		}
	
	} while(--bmp_charlen);
}

void init_size(void){
	size(127,127);
}
