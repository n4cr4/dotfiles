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
  .left(of="main", display="legend", size="50%")
  .show("regs", on="legend")
  .below(display="stack", size="55%")
).build()
end


set context-stack-lines 20
set context-code-lines 15 
