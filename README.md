# Tana per un procione

Dentro la cartella `linux` c'è l'ambiente di Zippo, all'esame si potranno eseguire gli script `.ps1` utilizzando [wsl](https://learn.microsoft.com/en-us/windows/wsl/about), su mac-os una soluzione per poter usare sia `gcc` che istruzioni a `32bit` è [docker](https://www.docker.com/).

## Per iniziare

- installare docker https://docs.docker.com/desktop/install/mac-install/

## Come eseguire 

```
./run.sh
```

questo script costruirà l'immagine partendo dal `./Dockerfile` e la runnerà facendo partire `powershell` (la shell preferita di zippolone)

## Oh no! Come faccio ad installare qualcosa sull'immagine

Modifica il `./Dockerfile` scrive `RUN` e la cosa che scriveresti nella tua shell per installare le cose

## Per concludere

Il resto delle info sono identiche a quelle che darà Zippo a lezione

