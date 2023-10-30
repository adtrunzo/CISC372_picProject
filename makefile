
image:image.c image.h
	gcc -g image.c -o image -lm

imagep: imagep.c image.h
	gcc -g imagep.c -o imagep -lm -pthread

imagemp: imagemp.c image.h
	gcc -g -fopenmp imagemp.c -o imagemp -lm

clean:
	rm -f image imagep imagemp output.png