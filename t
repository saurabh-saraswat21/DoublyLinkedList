[33mcommit 41d9f6a029c5bd23e07ae3a0f2e61146f3c7c968[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m, [m[1;31morigin/master[m[33m)[m
Author: saurabh <ssroyal>
Date:   Mon Mar 2 15:45:56 2020 +0530

    add sample main class

[33mcommit 9535bc9a62ed96c827252ca4352bd8991edf81d9[m
Author: saurabh <ssroyal>
Date:   Mon Mar 2 15:45:16 2020 +0530

    add removeAfter() method

[33mcommit 9354c80063cec0e7337f25311f54bcfc3d7c8268[m
Author: saurabh <ssroyal>
Date:   Sat Feb 29 12:27:06 2020 +0530

    fix removeFirst() method

[33mcommit c383aecfe8663286c5dd21e7e4670bfe72219db3[m
Author: saurabh <ssroyal>
Date:   Sat Feb 29 12:25:31 2020 +0530

    fix removeFirst() method

[33mcommit db8824e31434e0dca9eafdcb0681cc6d031d247b[m
Author: saurabh <ssroyal>
Date:   Sat Feb 29 12:14:45 2020 +0530

    override toString() method of list

[33mcommit d8f3098fc98578893524433f1a1ac8f0b7c6b8ec[m
Author: saurabh <ssroyal>
Date:   Sat Feb 29 12:14:04 2020 +0530

    complete removeFirst() method

[33mcommit 409a624471a46eff9ac1a1e601011e5b4a742a35[m
Author: saurabh <ssroyal>
Date:   Sat Feb 29 11:45:08 2020 +0530

    complete add() method

[33mcommit cedc9f9c84f4453582797c1c71c08e56089e8e76[m
Author: saurabh <ssroyal>
Date:   Sat Feb 29 11:44:14 2020 +0530

    add add() method at a particular index

[33mcommit 0bbde0aebc6cd715a6b175acb4be6096aa7dedb2[m
Author: saurabh <ssroyal>
Date:   Sat Feb 29 11:39:45 2020 +0530

    add getNode() method

[33mcommit e18f71622dea83ca651feb2f81e577e422e66f85[m
Author: saurabh <ssroyal>
Date:   Sat Feb 29 03:43:32 2020 +0530

    fix access modifiers of methods

[33mcommit 0d3bd2b73e5254781508b0a0f607ce78a9c77eb0[m
Author: saurabh <ssroyal>
Date:   Sat Feb 29 03:35:43 2020 +0530

    complete addAfter() method

[33mcommit eb9d7deb9073387920eef03bebb62639d729c3db[m
Author: saurabh <ssroyal>
Date:   Sat Feb 29 03:10:36 2020 +0530

    complete addFirst() method

[33mcommit 1afa5f8b5cd2a30c0d9899d66d0af3c8deffb7a4[m
Author: saurabh <ssroyal>
Date:   Sat Feb 29 02:54:16 2020 +0530

    add Node class

[33mcommit e64b64bf6ee4b76e729ac13c37d55be47a95dc10[m
Author: saurabh <ssroyal>
Date:   Sat Feb 29 02:51:38 2020 +0530

    add size field

[33mcommit a369669d5f95fe7d1322e2329e8e91a6f7843475[m
Author: saurabh <ssroyal>
Date:   Sat Feb 29 02:51:27 2020 +0530

    overide methods

[33mcommit 582826ce20b8559b16f941881bcd694f040cf368[m
Author: saurabh <ssroyal>
Date:   Sat Feb 29 02:48:06 2020 +0530

    add MyDoublyList class

[33mcommit 0b5fcf6e9afa0a69638ce632ba0579870adc9bce[m
Author: saurabh <ssroyal>
Date:   Sat Feb 29 02:46:21 2020 +0530

    complete DoublyListAdt

[33mcommit fbd3a1aea6adfba9bd1ae22666d2a45e351f5e2a[m
Author: saurabh <ssroyal>
Date:   Sat Feb 29 02:45:41 2020 +0530

    Initial commit

                   SSUUMMMMAARRYY OOFF LLEESSSS CCOOMMMMAANNDDSS

      Commands marked with * may be preceded by a number, _N.
      Notes in parentheses indicate the behavior if _N is given.
      A key preceded by a caret indicates the Ctrl key; thus ^K is ctrl-K.

  h  H                 Display this help.
  q  :q  Q  :Q  ZZ     Exit.
 ---------------------------------------------------------------------------

                           MMOOVVIINNGG

  e  ^E  j  ^N  CR  *  Forward  one line   (or _N lines).
  y  ^Y  k  ^K  ^P  *  Backward one line   (or _N lines).
  f  ^F  ^V  SPACE  *  Forward  one window (or _N lines).
  b  ^B  ESC-v      *  Backward one window (or _N lines).
  z                 *  Forward  one window (and set window to _N).
  w                 *  Backward one window (and set window to _N).
  ESC-SPACE         *  Forward  one window, but don't stop at end-of-file.
  d  ^D             *  Forward  one half-window (and set half-window to _N).
  u  ^U             *  Backward one half-window (and set half-window to _N).
  ESC-)  RightArrow *  Right one half screen width (or _N positions).
  ESC-(  LeftArrow  *  Left  one half screen width (or _N positions).
  ESC-}  ^RightArrow   Right to last column displayed.
  ESC-{  ^LeftArrow    Left  to first column.
  F                    Forward forever; like "tail -f".
  ESC-F                Like F but stop when search pattern is found.
  r  ^R  ^L            Repaint screen.
  R                    Repaint screen, discarding buffered input.
        ---------------------------------------------------
        Default "window" is the screen height.
        Default "half-window" is half of the screen height.
 ---------------------------------------------------------------------------

                          SSEEAARRCCHHIINNGG

  /_p_a_t_t_e_r_n          *  Search forward for (_N-th) matching line.
  ?_p_a_t_t_e_r_n          *  Search backward for (_N-th) matching line.
  n                 *  Repeat previous search (for _N-th occurrence).
  N                 *  Repeat previous search in reverse direction.
  ESC-n             *  Repeat previous search, spanning files.
  ESC-N             *  Repeat previous search, reverse dir. & spanning files.
  ESC-u                Undo (toggle) search highlighting.
  &_p_a_t_t_e_r_n          *  Display only matching lines
        ---------------------------------------------------
        A search pattern may be preceded by one or more of:
        ^N or !  Search for NON-matching lines.
        ^E or *  Search multiple files (pass thru END OF FILE).
        ^F or @  Start search at FIRST file (for /) or last file (for ?).
        ^K       Highlight matches, but don't move (KEEP position).
        ^R       Don't use REGULAR EXPRESSIONS.
 ---------------------------------------------------------------------------

                           JJUUMMPPIINNGG

  g  <  ESC-<       *  Go to first line in file (or line _N).
  G  >  ESC->       *  Go to last line in file (or line _N).
  p  %              *  Go to beginning of file (or _N percent into file).
  t                 *  Go to the (_N-th) next tag.
  T                 *  Go to the (_N-th) previous tag.
  {  (  [           *  Find close bracket } ) ].
  }  )  ]           *  Find open bracket { ( [.
  ESC-^F _<_c_1_> _<_c_2_>  *  Find close bracket _<_c_2_>.
  ESC-^B _<_c_1_> _<_c_2_>  *  Find open bracket _<_c_1_> 
        ---------------------------------------------------
        Each "find close bracket" command goes forward to the close bracket 
          matching the (_N-th) open bracket in the top line.
        Each "find open bracket" command goes backward to the open bracket 
          matching the (_N-th) close bracket in the bottom line.

  m_<_l_e_t_t_e_r_>            Mark the current position with <letter>.
  '_<_l_e_t_t_e_r_>            Go to a previously marked position.
  ''                   Go to the previous position.
  ^X^X                 Same as '.
        ---------------------------------------------------
        A mark is any upper-case or lower-case letter.
        Certain marks are predefined:
             ^  means  beginning of the file
             $  means  end of the file
 ---------------------------------------------------------------------------

                        CCHHAANNGGIINNGG FFIILLEESS

  :e [_f_i_l_e]            Examine a new file.
  ^X^V                 Same as :e.
  :n                *  Examine the (_N-th) next file from the command line.
  :p                *  Examine the (_N-th) previous file from the command line.
  :x                *  Examine the first (or _N-th) file from the command line.
  :d                   Delete the current file from the command line list.
  =  ^G  :f            Print current file name.
 ---------------------------------------------------------------------------

                    MMIISSCCEELLLLAANNEEOOUUSS CCOOMMMMAANNDDSS

  -_<_f_l_a_g_>              Toggle a command line option [see OPTIONS below].
  --_<_n_a_m_e_>             Toggle a command line option, by name.
  __<_f_l_a_g_>              Display the setting of a command line option.
  ___<_n_a_m_e_>             Display the setting of an option, by name.
  +_c_m_d                 Execute the less cmd each time a new file is examined.

  !_c_o_m_m_a_n_d             Execute the shell command with $SHELL.
  |XX_c_o_m_m_a_n_d            Pipe file between current pos & mark XX to shell command.
  s _f_i_l_e               Save input to a file.
  v                    Edit the current file with $VISUAL or $EDITOR.
  V                    Print version number of "less".
 ---------------------------------------------------------------------------

                           OOPPTTIIOONNSS

        Most options may be changed either on the command line,
        or from within less by using the - or -- command.
        Options may be given in one of two forms: either a single
        character preceded by a -, or a name preceded by --.

  -?  ........  --help
                  Display help (from command line).
  -a  ........  --search-skip-screen
                  Search skips current screen.
  -A  ........  --SEARCH-SKIP-SCREEN
                  Search starts just after target line.
  -b [_N]  ....  --buffers=[_N]
                  Number of buffers.
  -B  ........  --auto-buffers
                  Don't automatically allocate buffers for pipes.
  -c  ........  --clear-screen
                  Repaint by clearing rather than scrolling.
  -d  ........  --dumb
                  Dumb terminal.
  -D [_x_n_._n]  .  --color=_x_n_._n
                  Set screen colors. (MS-DOS only)
  -e  -E  ....  --quit-at-eof  --QUIT-AT-EOF
                  Quit at end of file.
  -f  ........  --force
                  Force open non-regular files.
  -F  ........  --quit-if-one-screen
                  Quit if entire file fits on first screen.
  -g  ........  --hilite-search
                  Highlight only last match for searches.
  -G  ........  --HILITE-SEARCH
                  Don't highlight any matches for searches.
  -h [_N]  ....  --max-back-scroll=[_N]
                  Backward scroll limit.
  -i  ........  --ignore-case
                  Ignore case in searches that do not contain uppercase.
  -I  ........  --IGNORE-CASE
                  Ignore case in all searches.
  -j [_N]  ....  --jump-target=[_N]
                  Screen position of target lines.
  -J  ........  --status-column
                  Display a status column at left edge of screen.
  -k [_f_i_l_e]  .  --lesskey-file=[_f_i_l_e]
                  Use a lesskey file.
  -K            --quit-on-intr
                  Exit less in response to ctrl-C.
  -L  ........  --no-lessopen
                  Ignore the LESSOPEN environment variable.
  -m  -M  ....  --long-prompt  --LONG-PROMPT
                  Set prompt style.
  -n  -N  ....  --line-numbers  --LINE-NUMBERS
                  Don't use line numbers.
  -o [_f_i_l_e]  .  --log-file=[_f_i_l_e]
                  Copy to log file (standard input only).
  -O [_f_i_l_e]  .  --LOG-FILE=[_f_i_l_e]
                  Copy to log file (unconditionally overwrite).
  -p [_p_a_t_t_e_r_n]  --pattern=[_p_a_t_t_e_r_n]
                  Start at pattern (from command line).
  -P [_p_r_o_m_p_t]   --prompt=[_p_r_o_m_p_t]
                  Define new prompt.
  -q  -Q  ....  --quiet  --QUIET  --silent --SILENT
                  Quiet the terminal bell.
  -r  -R  ....  --raw-control-chars  --RAW-CONTROL-CHARS
                  Output "raw" control characters.
  -s  ........  --squeeze-blank-lines
                  Squeeze multiple blank lines.
  -S  ........  --chop-long-lines
                  Chop (truncate) long lines rather than wrapping.
  -t [_t_a_g]  ..  --tag=[_t_a_g]
                  Find a tag.
  -T [_t_a_g_s_f_i_l_e] --tag-file=[_t_a_g_s_f_i_l_e]
                  Use an alternate tags file.
  -u  -U  ....  --underline-special  --UNDERLINE-SPECIAL
                  Change handling of backspaces.
  -V  ........  --version
                  Display the version number of "less".
  -w  ........  --hilite-unread
                  Highlight first new line after forward-screen.
  -W  ........  --HILITE-UNREAD
                  Highlight first new line after any forward movement.
  -x [_N[,...]]  --tabs=[_N[,...]]
                  Set tab stops.
  -X  ........  --no-init
                  Don't use termcap init/deinit strings.
  -y [_N]  ....  --max-forw-scroll=[_N]
                  Forward scroll limit.
  -z [_N]  ....  --window=[_N]
                  Set size of window.
  -" [_c[_c]]  .  --quotes=[_c[_c]]
                  Set shell quote characters.
  -~  ........  --tilde
                  Don't display tildes after end of file.
  -# [_N]  ....  --shift=[_N]
                  Horizontal scroll amount (0 = one half screen width)
      ........  --no-keypad
                  Don't send termcap keypad init/deinit strings.
      ........  --follow-name
                  The F command changes files if the input file is renamed.
      ........  --use-backslash
                  Subsequent options use backslash as escape char.


 ---------------------------------------------------------------------------

                          LLIINNEE EEDDIITTIINNGG

        These keys can be used to edit text being entered 
        on the "command line" at the bottom of the screen.

 RightArrow ..................... ESC-l ... Move cursor right one character.
 LeftArrow ...................... ESC-h ... Move cursor left one character.
 ctrl-RightArrow  ESC-RightArrow  ESC-w ... Move cursor right one word.
 ctrl-LeftArrow   ESC-LeftArrow   ESC-b ... Move cursor left one word.
 HOME ........................... ESC-0 ... Move cursor to start of line.
 END ............................ ESC-$ ... Move cursor to end of line.
 BACKSPACE ................................ Delete char to left of cursor.
 DELETE ......................... ESC-x ... Delete char under cursor.
 ctrl-BACKSPACE   ESC-BACKSPACE ........... Delete word to left of cursor.
 ctrl-DELETE .... ESC-DELETE .... ESC-X ... Delete word under cursor.
 ctrl-U ......... ESC (MS-DOS only) ....... Delete entire line.
 UpArrow ........................ ESC-k ... Retrieve previous command line.
 DownArrow ...................... ESC-j ... Retrieve next command line.
 TAB ...................................... Complete filename & cycle.
 SHIFT-TAB ...................... ESC-TAB   Complete filename & reverse cycle.
 ctrl-L ................................... Complete filename, list all.


