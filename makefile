#       makefile for hideAndSeek2021, problem 1,
#       

all:		build

TARGET = hideAndSeek2021
SIMLOGLEVEL = 3
DEBUG = 1
include ./makelib
DPOS := $(DPARSON)/OpSys
DPPY := $(DPOS)/state2codeV17


clean:		subclean
		-/bin/bash -c 'chmod 666 ~parson/tmp/$(STUDENT)_STM*'
		/bin/bash -c '/bin/rm -f *.out *.dif *.pyc junk parsetab.py *.vmlf hideAndSeek2021_crunch.png'
		/bin/bash -c '/bin/rm -f *.dot *.png *.jpg testmachine.ck junk.* *.tmp *.log hideAndSeek2021.py'
		/bin/bash -c '/bin/rm -f *.crunch ~parson/tmp/$(STUDENT)_STM_*.log $(STUDENT)_STM_*.log Unsafe*.log'
		/bin/bash -c '/bin/rm -f rr*.py sjf*.py fcfs*.py plotcrunch.csv *.crunch *_crunch.py *.crunch *_crunch.csv ./__pycache__/*.pyc'

test:		test_hideAndSeek2021

build:
		@echo 'COMPILING hideAndSeek2021'
		/bin/bash -c "PYTHONPATH=$(DPOS):.:.. $(PYTHON) $(DPPY)/State2CodeParser.py hideAndSeek2021.stm hideAndSeek2021.dot hideAndSeek2021.py CSC343Compile CSC343Compile"
		/bin/rm -f *.jpg *.png
		@echo "COMPILING COMPLETED"

test_hideAndSeek2021:	build
		@echo "SIMULATING (TESTING) hideAndSeek2021"
		/bin/rm -f ~parson/tmp/$(STUDENT)_STM_*.log $(STUDENT)_STM_*.log hideAndSeek2021.log
		/bin/bash -c "PYTHONPATH=$(DPOS):.:.. STMLOGDIR=~parson/tmp time $(PYTHON) hideAndSeek2021.py 2 4 10000 12345 $(SIMLOGLEVEL)"
		/bin/bash -c 'chmod 666 ~parson/tmp/$(STUDENT)_STM*'
		/bin/bash -c "PYTHONPATH=$(DPOS):.:.. $(PYTHON) crunchlog.py hideAndSeek2021.log"
		# STUDENT, COMMENT OUT NEXT LINE TO SEE THE LOG FILE.
		# bash -c '/bin/rm -f ~parson/tmp/$(STUDENT)_STM_*.log $(STUDENT)_STM_*.log hideAndSeek2021*.log'
		grep "TAGGED" hideAndSeek2021.log | sort > hideAndSeek2021.out
		diff hideAndSeek2021.out hideAndSeek2021.ref
		@echo "COMPLETED (OK) SIMULATING (TESTING) hideAndSeek2021"

graphs:		$(JPEGFILES)
		-mkdir $(ACCTWWW)
		cp -p hideAndSeek2021.jpg $(ACCTWWW)
		-/bin/bash -c 'chmod -R o+r+X $(ACCTWWW)'
		@echo "You can browse JPEGS in http://acad.kutztown.edu/~$(STUDENT)"
