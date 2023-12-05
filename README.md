# Tana per un procione

## Per iniziare

- installare docker https://docs.docker.com/desktop/install/mac-install/
- fare `git clone` in una cartella (senza spostarla in futuro)
- lanciare `install.sh`

## Come eseguire 

launch `wsl` from everywhere

```shell
# ricordati di avere il docker-engine attivo !!!
wsl # yeah just like that
```

questo script costruirà l'immagine partendo dal `./Dockerfile` e la runnerà facendo partire `powershell` (la shell preferita di zippolone)

## Oh no! Come faccio ad installare qualcosa sull'immagine

- Modifica il `./Dockerfile` 

scrivere `RUN` e la cosa che scriveresti nella tua shell per installare le cose

## Per concludere

Il resto delle info sono identiche a quelle che darà Zippo a lezione

