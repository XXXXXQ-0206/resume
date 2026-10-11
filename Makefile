ifndef JOBS
  JOBS := $(shell nproc)
endif
MAKEFLAGS += -j$(JOBS)

.PHONY: all clean

all: resume-cn-submit.pdf resume-en-submit.pdf resume-cn-post.pdf resume-en-post.pdf

clean:
	rm resume-cn-submit.pdf resume-en-submit.pdf resume-cn-post.pdf resume-en-post.pdf

resume-cn-submit.pdf: resume-cn.typ chicv.typ
	typst compile resume-cn.typ resume-cn-submit.pdf --input level=submit --font-path fonts

resume-en-submit.pdf: resume-en.typ chicv.typ
	typst compile resume-en.typ resume-en-submit.pdf --input level=submit --font-path fonts

resume-cn-post.pdf: resume-cn.typ chicv.typ
	typst compile resume-cn.typ resume-cn-post.pdf --input level=post --font-path fonts

resume-en-post.pdf: resume-en.typ chicv.typ
	typst compile resume-en.typ resume-en-post.pdf --input level=post --font-path fonts
