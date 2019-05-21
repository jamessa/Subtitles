download:
	# 2019
	youtube-dl --quiet --all-subs --skip-download PL-JmE9Ik3niShINabTCTrXEzVgJFRGBob
	find 0* -print0  | xargs  -0 -I {} echo 'echo "{}"; git shortlog "{}"  | grep -E "^[ ]+\w+" | wc -l '

all:
	# 2018
	youtube-dl --all-subs --skip-download PL-JmE9Ik3niQGLukl3M-p5A7Ig4G2xtvZ
	# 酮好字幕組
	youtube-dl --all-subs --skip-download PL-JmE9Ik3niSRvG3cOOy0MifotqkDUOsG
	# Carbloaded
	youtube-dl --write-sub --sub-lang zh-Hant --skip-download lBb5TFxj1S0
	#Single
	youtube-dl --all-subs --skip-download NzgSqg84I9k

commit:
	git add .
	git commit -m `date +'%m%d'`
	git push
