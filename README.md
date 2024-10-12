# MacBatteryChargeNotifier - 🪫💻
## IT - 🇮🇹
Strumento per ricevere notifiche di sistema e messaggio su Telegram quando la batteria del MacBook è scarica.
## EN - 🇬🇧/🇺🇸
Tool to recive system notifications and Telegram message when MacBook's battery is low.
## FR - 🇫🇷/🇨🇭
Instrument pour recevoir de notifications du système et un message sur Telegram quand la battérie du MacBook est faible.
# Descrizione / Description - 📝
## IT - 🇮🇹
Questo servizio si occupa di ricevere una notifica di sistema e un messaggio su Telegram quando:
- la batteria del MacBook raggiunge un determinato livello di carica della batteria (definito dall'utente durante l'installazione).
- la batteria del MacBook in carica raggiunge un determinato livello di carica della batteria (definito dall'utente durante l'installazione).
## EN - 🇬🇧/🇺🇸
This service is responsible for receiving a system notification and a Telegram message when:
- The MacBook battery reaches a certain charge level (defined by the user during installation).
- The MacBook battery while charging reaches a certain charge level (defined by the user during installation).
## FR - 🇫🇷/🇨🇭
Ce service s'occupe de envoyer une notification du système et un message sur Telegram lorsque:
- La batterie du MacBook atteint un certain niveau de charge (défini par l'utilisateur lors de l'installation).
- La batterie du MacBook en charge atteint un certain niveau de charge (défini par l'utilisateur lors de l'installation).
# Installazione / Installation - ✅
## Requisiti / Requirements / Exigences - 📋
### IT - 🇮🇹
Prima di procedere con l'installazione, è necessario procurarsi delle informazioni: token bot telegram, proprio ID telegram.
#### Creazione Bot Telegram
Cercare su Telegram "BotFather" e creare un bot. Alla fine del processo, copiarsi il token generato.
#### Ottenimento Telegram ID
Inoltrare un proprio messaggio di telegram al bot "userinfobot". Copiarsi l'ID che verrà fornito.
#### Avvio Bot Telegram
Cercare su Telegram il bot appena creato, e far partire lla conversazione.
Dovrebbe esserci un pulsante "Avvia"; Se non dovesse esserci, inviare messaggio /start.
### EN - 🇬🇧/🇺🇸
Before proceeding with the installation, you need to gather some information: Telegram bot token, your Telegram ID.
#### Creating a Telegram Bot
Search for "BotFather" on Telegram and create a bot. At the end of the process, copy the generated token.
#### Getting Your Telegram ID
Forward one of your Telegram messages to the bot "userinfobot". Copy the ID that will be provided.
#### Starting Telegram Bot
Search for the newly created bot on Telegram and start the conversation.
There should be a "Start" button; if it’s not there, send the message /start.
### FR - 🇫🇷/🇨🇭
Avant de procéder à l'installation, vous devez obtenir certaines informations: le token du bot Telegram et votre ID Telegram.
#### Création d'un bot Telegram
Rechercher "BotFather" sur Telegram et créer un bot. À la fin, copier le token généré.
#### Obtention de votre ID Telegram
Transférer un de vos message Telegram au bot "userinfobot". Copier l'ID qui sera fourni.
#### Démarrer le Bot Telegram
Rechercher le nouveau bot crée sur Telegram et commencer la conversation.
Il devrait y avoir un bouton "Démarrer"; si il n'y a pas, envoyer le message /start.
## Installazione / Installation - ✅
Open Terminal App and paste the following codes:
- Clone git repositpry
    ```bash
    git clone https://github.com/deatharmy25/MacBatteryChargeNotifier.git
    ```
- Enter into the folder:
    ```bash
    cd MacBatteryChargeNotifier
    ```
- Add execution permissions to install script
    ```bash
    chmod +x ./install.sh
    ```
- Execute install script
    ```bash
    ./install.sh
    ```
Now, follow the instructions and enjoy the service :-)
## Suggerimenti / Suggestions - 💡
- Time of check delay: 10
- Low battery trigger: 20
- Full battery trigger: 80
# Disinstallazione / Uninstallation / Désinstallation - ❌
Open Terminal App and paste the following codes:
- Clone git repositpry
    ```bash
    git clone https://github.com/deatharmy25/MacBatteryChargeNotifier.git
    ```
- Enter into the folder:
    ```bash
    cd MacBatteryChargeNotifier
    ```
- Add execution permissions to uninstall script
    ```bash
    chmod +x ./uninstall.sh
    ```
- Execute uninstall script
    ```bash
    ./uninstall.sh
    ```
# Riconfigurazione / Reconfiguration - 🔄
## IT - 🇮🇹
Per riconfigurare il servizio, avviare nuovamente lo script `./install.sh`.
## EN - 🇬🇧/🇺🇸
To reconfigure the service, restart `./install.sh` script.
## FR - 🇫🇷/🇨🇭
Pour reconfigurer le service, on doit redémarrer le script `./install.sh`.
# Donazioni / Donation - 💸
- [PayPal](https://paypal.me/DeathArmy25/)
# Autore / Author - 👨🏼‍💻
Armando Romeo aka [DeathArmy25](https://github.com/deatharmy25)
# Licenza / License - ⚖️
[GPL-3.0](LICENSE)