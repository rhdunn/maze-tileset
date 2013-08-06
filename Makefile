TILESIZE=32

SUFFIXES = .png .svg

%.png: %.svg
	rsvg -w ${TILESIZE} -h ${TILESIZE} $< $@

all:	maze/floor.png \
	maze/crossroads.png \
	maze/horizontal.png \
	maze/vertical.png \
	maze/end_left.png \
	maze/end_right.png \
	maze/end_top.png \
	maze/end_bottom.png \
	maze/corner_tl.png \
	maze/corner_tr.png \
	maze/corner_bl.png \
	maze/corner_br.png \
	maze/junction_left.png \
	maze/junction_right.png \
	maze/junction_top.png \
	maze/junction_bottom.png \
	maze/box.png \
	maze/roof.png \
	maze/left.png \
	maze/right.png \
	maze/top.png \
	maze/bottom.png \
	maze/outer_tl.png \
	maze/outer_tr.png \
	maze/outer_bl.png \
	maze/outer_br.png \
	maze/inner_tl.png \
	maze/inner_tr.png \
	maze/inner_bl.png \
	maze/inner_br.png \
	maze/inset_left.png \
	maze/inset_right.png \
	maze/inset_top.png \
	maze/inset_bottom.png \
	maze/corner2_tl.png \
	maze/corner2_tr.png \
	maze/corner2_bl.png \
	maze/corner2_br.png \
	maze/hedge_tl.png \
	maze/hedge_tr.png \
	maze/hedge_bl.png \
	maze/hedge_br.png \
	maze/vedge_tl.png \
	maze/vedge_tr.png \
	maze/vedge_bl.png \
	maze/vedge_br.png \
	maze/crossroads2.png \
	maze/crossroads3.png
