# Maze Tile Set

The maze tile set is a collection of images (tiles) that can be used to
construct mazes.

The tiles are in SVG format. They can be converted to PNG by running:

	$ rsvg -w 32 -h 32 maze/<TILE>.svg maze/<TILE>.png

Alternatively, you can use the provided makefile which will convert all the
tiles to PNG by running:

	$ make

## License

The tiles and tile data is licensed under the Creative Commons Attribution
Share-Alike 3.0 License (CC-BY-SA 3.0).
