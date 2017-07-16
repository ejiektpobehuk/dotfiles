#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char** argv){
	char bar_color[8];
	strcpy(bar_color, "#ff0000");
	if(argc != 3) return 1;
	int current = atoi(argv[1])/14;
	if (strcmp(argv[2],"on") == 0) strcpy(bar_color, "#8fd989"); 
	int length = 7;
	for (int i = 0; i < length; i++){
		if (current == i){
			printf("|");
		} else {
			printf("<span color='%s'></span>", bar_color);
		}
	}
	printf("\n");
	return 0;
}
