# Swift para Todes - Programando em Swift no Ubuntu

Este tutorial foi feito como um complemento para a palestra ministrada no IWD'19. Qualquer dúvida, entre em contato comigo via [e-mail](mailto:erbuen@protonmail.com) ou [Telegram](http://t.me/erbuen) :)

## Preparação

Chamaremos de **host OS** o sistema operacional do seu computador físico, onde o VirtualBox será instalado e chamaremos de **guest OS** o sistema operacional que será utilizado dentro da máquina virtual. No caso deste tutorial, o guest OS será o **Ubuntu**.

Siga os passos desta seção caso possua um computador com Windows ou com alguma distribuição de Linux diferente do Ubuntu. Estes passos também são úteis caso você esteja usando um Mac e queira experimentar o Ubuntu :)

*Dica: Salve os arquivos baixados em um local que você encontrará facilmente.*

### Etapa 1 - Baixando e instalando o VirtualBox da Oracle

1. Acesse www.virtualbox.org e clique em “Download VirtualBox 6.0”.
2. Na seção “VirtualBox 6.0.4 platform packages” escolha o que se adequa ao seu sistema operacional. Se você usa Windows, escolha “Windows hosts” e o download se iniciará automaticamente (aprox. 220 MB). Se você usa distribuições Linux diferentes do Ubuntu, escolha “Linux distributions”, na tela seguinte escolha sua distribuição e o download se iniciará (aprox. 143 MB para o Fedora).
3. Quando o download for concluído, clique no arquivo para instalar e siga o passo-a-passo do instalador.

### Etapa 2 - Baixando o Ubuntu

1. Acesse www.ubuntu.com e clique em “Download”.
2. Na seção “Ubuntu Desktop”, clique em “18.04 LTS”. O download deve se iniciar automaticamente (aprox. 2 GB), caso isso não ocorra, clique em “download now” na tela de agradecimento.
3. 
### Etapa 3 - Rodando o Ubuntu no VirtualBox

1. Abra o VirtualBox e na tela inicial (Oracle VM VirtualBox Manager) clique no ícone "New".
2. A janela seguinte é o primeiro passo de configuração da sua máquina virtual. Dê um nome a ela no campo "Name" (eu coloquei Ubuntu 18.04 que é o nosso guest OS) e escolha o tipo "Linux" no campo "Type". Por fim, no campo "Version", escolha "Ubuntu (64-bit)" e depois clique em "Continue".
3. O próximo passo pede que você escolha a quantidade de memória RAM que será alocada para a máquina virtual. O recomendado é pelo menos 1024 MB. Se possível, escolha 2048 MB e clique em "Continue".
4. No passo seguinte, mantenha selecionada a opção "Create a virtual hard disk now" e clique em "Create". Na janela que aparece, mantenha selecionada a opção "VDI (VirtualBox Disk Image)" e clique em "Continue". Neste passo, mantenha selecionada a opção "Dynamically allocated" e clique em "Continue". Na tela seguinte, você deverá escolher o tamanho do seu disco virtual. Selecione pelo menos 10 GB e clique em "Create".
5. **Este passo é muito importante!!!** Sua máquina virtual está configurada mas ainda não está pronta para ser utilizada. Na janela visível para você, do lado esquerdo, é possível ver a máquina virtual criada com o nome que você deu. Além dela estar desligada (Powered Off), ela ainda não possui o guest OS instalado nela. É o que faremos agora! Dê um duplo clique na sua máquina virtual e aguarde a janela aparecer. Nesta janela, vamos escolher o arquivo do Ubuntu (.iso) que baixamos na Etapa 2. Clique no ícone para procurar o arquivo que está ao lado direito do campo escrito "Empty". Procure a localização do arquivo do Ubuntu e clique em "Abrir / Open". Onde antes estava escrito "Empty" aparecerá o nome todo do arquivo. No caso deste tutorial, o nome é *ubuntu-18.04.2-desktop-amd64.iso*. Clique em "Start" e sua máquina virtual vai ser iniciada com a instalação do Ubuntu \o/
6. Agora a janela da sua máquina virtual é como um computador de verdade rodando a instalação do Ubuntu, então vamos instalá-lo! Selecione o idioma da instalação à esquerda (selecionei Português!) e depois clique em "Instalar o Ubuntu" para prosseguir. Na seção "Layout do teclado", escolha as configurações do seu teclado. Há um campo que você pode utilizar para verificar se escolheu as opções corretas. Ao concluir a seleção, clique em "Continuar".
7. Na seção "Atualizações e outro software", mantenha as opções que já estão selecionadas ("Instalação normal" e "Baixar atualizações enquanto instala Ubuntu") e clique em "Continuar".
8. Na seção "Tipo de instalação", mantenha a opção que já está selecionada ("Apagar disco e reinstalar o Ubuntu") e não se preocupe! Apesar do aviso de que isso apagará todos os programas, documentos, etc., lembre-se que você está em uma máquina virtual e isso não afetará em nada o host OS ;) Clique em "Instalar agora" para prosseguir. Aparecerá um aviso na tela "Escrever as mudanças nos discos?", clique em "Continuar".
9. Na seção "Onde você está?", selecione seu fuso horário e clique em "Continuar". Na seção "Quem é você?", você vai definir seu nome de usuário e senha para logar no Ubuntu. Preencha todos os campos e clique em "Continuar". A instalação vai continuar e o Ubuntu já estará usando a internet do seu computador físico, então é só aguardar! :D

## Links Interessantes

Oracle VM VirtualBox User Manual - https://www.virtualbox.org/manual/ 
