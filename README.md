# Maze Tile Set

![maze tiles](https://raw.github.com/rhdunn/maze-tileset/master/sand/tiles.png)

The maze tile set is a collection of images (tiles) that can be used to
construct mazes.

The source for the tiles is in SVG format. They can be converted to PNG by running:

	$ rsvg-convert -w 32 -h 32 <TILESET>/<TILE>.svg > <TILESET>/<TILE>.png

Alternatively, you can use the provided makefile which will convert all the
tiles to PNG by running:

	$ make

This will also build the sand/tiles.png file.

## Tile List

The list of tiles is provided in the `tiles.lst` file. This list does not
include the file extension and is relative to the `maze` folder.

This list is used by the tile maps, and is a 0-based index list (so 0 is the
first tile in the list, not 1).

The `sand/tiles.png` file is an image of 7x7 tiles, with each tile being 32x32
pixels. This matches the `tiles.lst` file, starting in the top-left corner
and moving left-to-right, top-to-bottom. The last cell does not have an allocated
tile image.

## Tile Depth

A maze with a tile depth of 2 (that is, it has 2 values -- 0=floor and 1=wall)
can be rendered by displaying the tile in the `sand/tile.lst` file that
corresponds to the tile depth value.

The `tiles.16` and `tiles.256` files are comma separated lists of numbers that
reference tiles in `sand/tiles.lst` for a tile depth of 16 and 256 respectively.

They are used to convert a map like:

	11
	10

into a map like:

	8 5
	7 0

that can then be rendered using the tiles referenced in `tiles.lst`.

The tile values can be calculated by adding the values of adjacent wall tiles
(value 1) according to the following values:

	tiles.16 : tiles.256
	---------:----------
	  1      : 16 1  64
	4 + 8    :  4 +   8
	  2      : 32 2 128

If the adjacent value goes outside the maze map, it is treated as a floor
tile (value 0) and thus is not added to the tile depth value.

For example, the top-left corner of the example map above has the following
adjacent tiles:

	+ 8
	2

Thus, it has an index value of `2 + 8 = 10`. This index in `tiles.16` has the
tile value of 8 which corresponds to the `corner_tl` tile in `tiles.lst`.

## Color Palette

![color palette](https://raw.github.com/rhdunn/maze-tileset/master/sand/color-palette.png)

## License

The tiles and tile data is licensed under the Creative Commons Attribution
Share-Alike 3.0 License (CC-BY-SA 3.0).
