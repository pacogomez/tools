#!/usr/bin/env bash
echo '```python
' >$TMPDIR/python.md
cat $1 >>$TMPDIR/python.md
echo '```
' >>$TMPDIR/python.md
pandoc $TMPDIR/python.md --to pdf | lp
rm $TMPDIR/python.md
