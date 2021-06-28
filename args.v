module main

import os
import os.cmdline

fn handle_args() Settings {
	args := os.args.clone()[1..]

	filename := cmdline.only_non_options(args)[0]

	println('filename: $filename')

	if filename.len < 1 {
		panic('atleast one filename please!')
	}

	return Settings{filename}
}

struct Settings {
	filename string
}
