SingleChannel.x:	SingleChannel.f90 Bsplines.f matrix_stuff.f SingleChannel.o Bsplines.o matrix_stuff.o linfit.o EREdata.o ~/bin/minpack.o EREdata.mod
	g95    -ftrace=full -freal-loops SingleChannel.o matrix_stuff.o Bsplines.o linfit.o ~/bin/minpack.o EREdata.o -framework vecLib -L/opt/local/lib/ -I/opt/local/lib/ -L/users/mehtan/bin -larpack -o SingleChannel.x

SingleChannel.o:	SingleChannel.f90
	g95    -ffixed-line-length-132 -freal-loops -ftrace=full -c SingleChannel.f90

matrix_stuff.o:	matrix_stuff.f
	g95    -ffixed-line-length-132 -ftrace=full -c matrix_stuff.f

Bsplines.o:	Bsplines.f
	g95    -ffixed-line-length-132 -ftrace=full -c Bsplines.f	

linfit.o:	linfit.f
	g95    -ffixed-line-length-132 -ftrace=full -c linfit.f

EREdata.o:   EREdata.f90
	g95    -ffixed-line-length-132 -ftrace=full -c EREdata.f90 



       