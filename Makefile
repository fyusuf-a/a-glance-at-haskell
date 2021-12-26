PRESENTATION = presentation.tex
HANDOUT = handout.tex
SRCS = ${HANDOUT} ${PRESENTATION}
OBJDIR = objs

all: presentation handout

presentation: ${PRESENTATION:.tex=.pdf}

handout: ${HANDOUT:.tex=.pdf}

${HANDOUT}:
	sed 's/\documentclass{beamer}/\documentclass[handout]{beamer}/g' presentation.tex > handout.tex

clean:
	rm -f ${SRCS:.tex=.aux} ${SRCS:.tex=.nav} ${SRCS:.tex=.log} \
		${SRCS:.tex=.out} ${SRCS:.tex=.snm} ${SRCS:.tex=.toc} \
		${SRCS:.tex=.vrb} ${HANDOUT} ${PRESENTATION:.tex=.pdf} \
		${HANDOUT:.tex=.pdf}

fclean: clean
	rm -f ${SRCS:.tex=.pdf}

re: fclean all

.tex.pdf:
	xelatex $<

.PHONY: all clean fclean re handout presentation
.SUFFIXES: .tex .pdf
