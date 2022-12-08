local options = {
---- General -------------------------------------------------------------
  encoding = 'utf-8',                          -- the encoding displayed
  fileencoding = 'utf-8',                      -- file-content encoding for the current buffer
  autoread = true,                             -- reload changes from disk
  title = true,                                -- set the title of window to the value of the titlestring
  termguicolors = true,                        -- enable true colors in terminal
  clipboard = "unnamedplus",                   -- allows neovim to access the system clipboard
  cmdheight = 1,                               -- more space in the neovim command line for displaying messages
  linespace = 0,                               -- no extra spaces between rows
  number = true,                               -- show line numbers
  numberwidth = 4,                             -- set number column width
  signcolumn = "yes",                          -- always enable sign column to avoid spasms
  showcmd = false,                             -- show (partial) command in the last line of the screen
  hidden = true,                               -- required to keep multiple buffers open multiple buffers
  syntax = "enable",                           -- enables syntax highlighing
  swapfile = false,                            -- creates a swapfiles
  backup = false,                              -- creates a backup files
  writebackup = false,                         -- make a backup before overwriting a file
  showmode = false,                            -- hide current mode in command-line (shown by lightline)
  splitbelow = true,                           -- force all horizontal splits to go below current window
  splitright = true,                           -- force all vertical splits to go to the right of current window
  timeoutlen = 700,                            -- timeout for keybindings
  ttimeoutlen = 0,                             -- timeout for completing commands
  updatetime = 100,                            -- faster completion (4000ms default)
  showtabline = 2,                             -- always show line with tab page labels
  laststatus = 3,                              -- always display the status line
  textwidth = 75,                              -- maximum width of text that is being inserted. 
  colorcolumn = "75",                          -- enable the border of working area

-- Russian keyboard layout support ---------------------------------------
  keymap = "russian-jcukenwin",                -- eneble swithcing keybord
  iminsert = 0,                                -- at startup, enter in English
  imsearch = 0,                                -- at startup, search in English

---- Formatting ----------------------------------------------------------
  expandtab = true,                             -- converts tabs to spaces
  tabstop = 2,                                  -- insert 2 spaces for a tab
  shiftwidth = 2,                               -- change the number of space characters inserted for indentation
  smarttab = true,                              -- makes tabbing smarter will realize 
  autoindent = true,                            -- uses the indent from the previous line
  cindent = true,                               -- enables automatic C program indenting
  smartindent = true,                           -- recognizes some C syntax to increase/reduce the indent where appropriate
  wrap = false,                                 -- display long lines as just one line
  sidescrolloff = 8,                            -- minimal number of screen columns to keep to the left and to the right of the cursor if 'nowrap' is set
  scrolljump = 5,                               -- minimal number of lines to scroll when the cursor gets off the screen
  scrolloff  = 2,                               -- minimal number of screen lines to keep above and below the cursor
  list = true,                                  -- list mode

---- Mause and cursor ----------------------------------------------------
  mouse = "a",                                  -- enable a mouse
  ruler = true,                                 -- show the cursor position all the time
  cursorline = true,                            -- enable highlighting of the current line

---- Completetion --------------------------------------------------------
  pumheight = 10,                               -- makes popup menu smaller
  completeopt = { "menu", "menuone", "noselect" }, -- some settings of popup menu

---- Search --------------------------------------------------------------
  ignorecase = true,                            -- case insensitive search
  smartcase = true,                             -- case sensitive when uc present
  hlsearch = true,                              -- highlight all matches on previous search pattern

---- Undo ----------------------------------------------------------------
  undodir = undodir,                            -- set an undo directory
  undofile = true,                              -- enable persistent undo
  undolevels = 1000,                            -- maximum number of changes that can be undone
  undoreload = 10000,                           -- maximum number lines to save for undo on a buffer reload

  foldmethod = "manual",                        -- folding, set to "expr" for treesitter based folding
  foldexpr = "",                                -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
  whichwrap  = "bs<>[]hl",                      -- allow specified keys to move to the previous/next line
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.listchars:append "space:⋅"              -- character to show for a space
vim.opt.shortmess:append "c"                    -- don't show redundant messages from ins-completion-menu
vim.opt.iskeyword:append "-"                    -- hyphenated words recognized by searches
vim.opt.shortmess:append "I"                    -- don't show the default intro message
vim.opt.formatoptions:remove({ "c", "r", "o" }) -- don't insert the current comment leader automatically for auto-wrapping comments
