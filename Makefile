TILESIZE=32

SUFFIXES = .png .svg

%.png: %.svg
	rsvg-convert -w ${TILESIZE} -h ${TILESIZE} $< > $@

all:	sand-tiles \
	sand/color-palette.png \
	sand/tiles.png

sand/color-palette.png : sand/color-palette.svg
	rsvg-convert -w 512 -h 256 $< > $@

sand/tiles.png : sand/tiles.svg sand-tiles
	rsvg-convert -w 224 -h 224 $< > $@

sand-tiles:	\
	sand/floor.png \
	sand/crossroads.png \
	sand/horizontal.png \
	sand/vertical.png \
	sand/end_left.png \
	sand/end_right.png \
	sand/end_top.png \
	sand/end_bottom.png \
	sand/corner_tl.png \
	sand/corner_tr.png \
	sand/corner_bl.png \
	sand/corner_br.png \
	sand/junction_left.png \
	sand/junction_right.png \
	sand/junction_top.png \
	sand/junction_bottom.png \
	sand/box.png \
	sand/roof.png \
	sand/left.png \
	sand/right.png \
	sand/top.png \
	sand/bottom.png \
	sand/outer_tl.png \
	sand/outer_tr.png \
	sand/outer_bl.png \
	sand/outer_br.png \
	sand/inner_tl.png \
	sand/inner_tr.png \
	sand/inner_bl.png \
	sand/inner_br.png \
	sand/inset_left.png \
	sand/inset_right.png \
	sand/inset_top.png \
	sand/inset_bottom.png \
	sand/corner2_tl.png \
	sand/corner2_tr.png \
	sand/corner2_bl.png \
	sand/corner2_br.png \
	sand/hedge_tl.png \
	sand/hedge_tr.png \
	sand/hedge_bl.png \
	sand/hedge_br.png \
	sand/vedge_tl.png \
	sand/vedge_tr.png \
	sand/vedge_bl.png \
	sand/vedge_br.png \
	sand/crossroads2.png \
	sand/crossroads3.png
