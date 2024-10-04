local Keymap = require("selectnull.utils").Keymap

-- Enable Emacs style movement in insert mode
-- Some men just want to watch the world burn.

Keymap.insert("<C-n>", "<Down>")
Keymap.insert("<C-p>", "<Up>")
Keymap.insert("<C-b>", "<Left>")
Keymap.insert("<C-f>", "<Right>")
Keymap.insert("<C-a>", "<C-o>^")
Keymap.insert("<C-e>", "<C-o>$")
