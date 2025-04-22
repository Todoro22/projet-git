FROM ubuntu:latest

# Installer SSH et Git
RUN apt-get update && apt-get install -y openssh-server git

# Créer un utilisateur git
RUN useradd -m git
RUN mkdir /home/git/.ssh && chmod 700 /home/git/.ssh

# Copier la clé publique dans le conteneur (autoriser l'accès SSH)
COPY authorized_keys /home/git/.ssh/authorized_keys
RUN chmod 600 /home/git/.ssh/authorized_keys
RUN chown -R git:git /home/git/.ssh

# Exposer le port 22 pour SSH
EXPOSE 22

# Démarrer le service SSH
CMD ["/usr/sbin/sshd", "-D"]
