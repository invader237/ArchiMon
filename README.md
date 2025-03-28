# ArchiMon

Bienvenue dans le backend d'ArchiMon, un projet dockerisé avec amour (et un peu de galère).

## ⚙️ Lancement du projet

### Backend & Base de données
Le backend ainsi que la base de données sont **dockerisés**. Tout devrait se lancer tranquillement via Docker.

### Frontend
Pour lancer le frontend (disponible ici : [ArchiMon-front](https://github.com/invader237/ArchiMon-front)), il suffit d’exécuter la commande suivante :

```bash
npm run dev
```
## 📦 Base de données & Secrets

- La base de données est automatiquement **importée dans MySQL** au lancement. Rien à faire de votre côté, sauf croiser les doigts. 🤞

- Un **token OpenAI valide** vous a été envoyé en privé par *invader237* sur Discord.  
  **Malheureusement**, le fichier `.env` ne fonctionne pas correctement dans ce projet.  
  Il faut donc **ajouter directement la clé dans le fichier** `application.properties` :
  
  ```properties
  openai.api.key=VOTRE_CLÉ_ICI
  ```
---

## 😬 Courage...

> **Peu de choses sont vraiment fonctionnelles...**  
> Mais bon, c’était pas facile avec cette SAE. On a fait ce qu’on a pu ! 😅  
>  
> **Bonne chance à vos yeux.** 👀
