# autoconnect

- Tu en as marre du CAS de l'INSA ?
- Tu en as marre de tapper ton login et ton pass à tout bout de champ ?
- Ne t'inquiète pas, `autoconnect` est là pour toi !

## Installation

- Lance la commande `bash -c "$(curl https://raw.github.com/hexanome/autoconnect/master/install.sh)"`
- Laisse-toi guider par les instructions.
- Profite ! Plus jamais de CAS, plus jamais de securelogin.arubanetworks.com, tu surfe quand tu veux où tu veux !

## Sécurité

- Ton login et ton pass te seront demandé une seule fois, lors de l'installation.
- Ils restent sur ton ordinateur, pas de mauvaise blague ! Vérifie le code ci-dessus.
- Ils seront enregistré dans le fichier `/etc/init.d/autoconnect`, protégé en lecture / écriture.
- Lors de la connection, ils sont envoyé en POST dans une requète encryptée HTTPS pour ne pas être interceptés.
- Si tu as un nouveau login / pass, refais la procédure d'installation pour écraser les anciens.
