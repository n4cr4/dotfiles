source ~/.local/share/pwndbg/gdbinit.py
set show-tips off

source ~/.local/share/splitmind/gdbinit.py
python
import splitmind
(splitmind.Mind()
  .tell_splitter(show_titles=True)
  .tell_splitter(set_title="main")
  .left(display="disasm", size="35%")
  .below(of="disasm", display="backtrace", size="20%")
  .left(of="main", display="regs", size="50%")
  .below(display="stack", size="60%")
  .below(cmd="tty; tail -f /dev/null", size="30%", clearing=False)
  .tell_splitter(set_title="I/O")
  .above(of="main", cmd="ipython", size="75%")
  .tell_splitter(set_title="ipython")
).build()
end

set context-code-lines 20
