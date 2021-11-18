# Tutorial 9

Check out `ass2.md`.

![steve_jobs](steve_jobs.png)

s.st_mode;
char perms[] = "-rwxrwxrwx"
if (!(s.st_mode & S_IRUSR)) {
    perms[1] = '-';
}

if ((s.st_mode & S_IRUSR)) {
    perms[1] = 'r';
}

-rwxr-xr-x

S_ISREG(s.st_mode)

S_ISDIR(s.st_mode)
