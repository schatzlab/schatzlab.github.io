## Schatzlab Website Source Materials

These pages use Jekyll to apply a consistent look and feel to the HTML pages. Instead of the usual header block, add this instead:

    ---
    layout: default
    title: Your title
    ---
    
    
### File Sizes
    
Note there is a hard limit of 100MB per file, and 1GB for the whole repo. If you need to store larger files, please put them into a separate repo and/or onto a separate machine

If you are on a Mac, Ive added a helper program shrinkpdf.sh to the support directory that will automatically apply the `Reduce File Size` Quartz Filter to your PDF. Run it as `shrinkpdf.sh file1.pdf file2.pdf ...`, and the original file will be saved to `orig_file1.pdf`, and the shrunk file will be saved as `file1.pdf`.

