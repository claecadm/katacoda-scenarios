Este ambiente é um playground para você treinar livremente o Kubernetes, ele está todo pronto, mas não possui um ingress controller, você está livre para instalar o ingress ou o que quiser, caso deseje um atalho para instalar o nginx-ingress controller, execute o seguinte script:

`sh ~/scripts/ingress.sh`{{execute}}

O domínio que você poderá utilizar para expor suas aplicações será o seguinte:

`APLICACAO.[[HOST2_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com`{{copy}}

Onde APLICACAO será o nome de sua escolha, crie quantos ingress hosts quiser!

* Uma observação, o "-80-" no nome do subdomínio é a porta do host que o ingress irá utilizar, caso deseje mudar para 443 fique a vontade, mesmo utilizando a porta 80, o LoadBalancer externo do Katacoda já dispinibiliza automaticamente um certificado ssl, basta chamar a url por "https://".