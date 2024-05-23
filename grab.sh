dest=bitstream
base=nexys_stopwatch

mkdir $dest 2>/dev/null


bit=project.runs/impl_1/top_level_wrapper.bit 
ltx=project.runs/impl_1/top_level_wrapper.ltx
bin=project.runs/impl_1/top_level_wrapper.bin


                cp $bit ${dest}/${base}.bit
test -f $bin && cp $bin ${dest}/${base}.bin 
test -f $ltx && cp $ltx ${dest}/${base}.ltx

