To move pictures below a certain resolution (width less than 1400, h for height) to a directory:

```bash
identify -format "%w:%f\n" * | awk -F : '$1<1400 {print $2}' | xargs -I % sh -c 'mv % ../small/'
```

To list unique files in a directory:

```bash
identify -format "%# %f\n" '*glob*' | sort -u -k1,1 | cut -d' ' -f2
```

pipe to xargs + mv to move them out and leave all the duplicates behind.

To move corrupt pictures into their own directory:

```bash
find . | xargs -I % sh -c 'identify -verbose % > /dev/null 2>&1; if [ $? -eq 1 ]; then mv % ../corrupt-pictures; fi '
```
