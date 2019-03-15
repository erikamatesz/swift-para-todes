# Swift para Todes - Programando em Swift no Ubuntu

Este tutorial foi feito por mim, Erika Bueno, como um complemento para a palestra ministrada no IWD'19. Qualquer dúvida, entre em contato comigo via [e-mail](mailto:erbuen@protonmail.com) ou [Telegram](http://t.me/erbuen) :)

## Preparação

Chamaremos de **host OS** o sistema operacional do seu computador físico, onde o VirtualBox será instalado e chamaremos de **guest OS** o sistema operacional que será utilizado dentro da máquina virtual. No caso deste tutorial, o guest OS será o **Ubuntu**.

Siga os passos desta seção caso possua um computador com Windows ou com alguma distribuição de Linux diferente do Ubuntu. Estes passos também são úteis caso você esteja usando um Mac e queira experimentar o Ubuntu :)

Se você já está utilizando o Ubuntu, pode ir direto à próxima seção: "Baixando, instalando e configurando o Swift no Ubuntu".

*Dica: Salve os arquivos baixados em um local que você encontrará facilmente.*

### Etapa 1 - Baixando e instalando o VirtualBox da Oracle

1. Acesse www.virtualbox.org e clique em “Download VirtualBox 6.0”.
2. Na seção “VirtualBox 6.0.4 platform packages” escolha o que se adequa ao seu sistema operacional. Se você usa Windows, escolha “Windows hosts” e o download se iniciará automaticamente (aprox. 220 MB). Se você usa distribuições Linux diferentes do Ubuntu, escolha “Linux distributions”, na tela seguinte escolha sua distribuição e o download se iniciará (aprox. 143 MB para o Fedora).
3. Quando o download for concluído, clique no arquivo para instalar e siga o passo-a-passo do instalador.

### Etapa 2 - Baixando o Ubuntu

1. Acesse www.ubuntu.com e clique em “Download”.
2. Na seção “Ubuntu Desktop”, clique em “18.04 LTS”. O download deve se iniciar automaticamente (aprox. 2 GB), caso isso não ocorra, clique em “download now” na tela de agradecimento.

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
10. Quando a instalação for concluída, você receberá um aviso informando que o computador precisa ser reiniciado. Clique em "Reiniciar agora" e aguarde: sua máquina virtual rodando Ubuntu está pronta para ser utilizada! \o/ **Importante:** Ao reiniciar, aparecerá uma mensagem "Please remove the installation medium then press enter", apenas aperte o Enter e aguarde. Em alguns instantes a tela para login aparecerá. Na primeira vez que você utiliza o Ubuntu, é possível que ele peça para baixar atualizações então não deixe de fazer isso :)

## Baixando, instalando e configurando o Swift no Ubuntu

Vamos utilizar o Terminal. Para acessá-lo, clique no botão "Mostrar aplicativos" no canto inferior esquerdo da área de trabalho. Você pode rolar a tela até encontrar o Terminal ou pode digitar "terminal" no campo "Digite para pesquisar...".

O primeiro comando que utilizaremos é para instalar as dependências necessárias para o Swift. 

Na sua janela do terminal, você pode ver que o último caractere da linha é o *$* então todos os comandos que estarão neste tutorial deverão ser digitados depois do *$*, ok?

Então, na sua janela do terminal, digite o comando abaixo:

```sh
$ sudo apt-get install clang
```
Será necessário digitar a sua senha, a mesma que você utilizou para logar-se no Ubuntu. Faça isso e dê Enter. Os arquivos serão baixados e instalados, pode levar um tempinho.

Em seguida, digite o comando:

```sh
$ sudo apt-get install libcurl3 libcurl4 libpython2.7 libpython2.7-dev 
```

O próximo comando é para fazer o download do pacote do Swift (aprox. 220 MB): 
```sh
$ wget https://swift.org/builds/swift-4.2.3-release/ubuntu1804/swift-4.2.3-RELEASE/swift-4.2.3-RELEASE-ubuntu18.04.tar.gz
```

Se quiser verificar se o pacote foi baixado corretamente, digite o seguinte comando:

```sh
$ ls
```

Este comando mostra todos os arquivos existentes no diretório que você se encontra. Um dos arquivos mostrados deve ser o **swift-4.2.3-RELEASE-ubuntu18.04.tar.gz** :)

Agora precisamos extrair o conteúdo do pacote. 

Para isso, utilize o seguinte comando:

```sh
$ tar xzf swift-4.2.3-RELEASE-ubuntu18.04.tar.gz
```

Se você digitar novamente o comando **ls** após a extração do pacote, vai ver que além do que apareceu anteriormente, há uma pasta "swift-4.2.3-RELEASE-ubuntu18.04" ;)

Vamos navegar até o diretório "bin" do pacote. Faremos isso com os seguinte comandos:

```sh
$ cd swift-4.2.3-RELEASE-ubuntu18.04
```

Em seguida: 

```sh
$ cd usr/bin
```

Agora precisamos obter o caminho completo deste diretório. Faremos isso com o seguinte comando:

```sh
$ pwd
```

O resultado que aparecerá para você deve ser algo do tipo **/home/SEU_NOME_DE_USUÁRIO/swift-4.2.3-RELEASE-ubuntu18.04/usr/bin**. Por exemplo, como o nome de usuário que escolhi na minha instalação foi "erika", meu caminho ficará */home/erika/swift-4.2.3-RELEASE-ubuntu18.04/usr/bin*.

Digite o seguinte comando:

```sh
$ export PATH=/home/SEU_NOME_DE_USUÁRIO/swift-4.2.3-RELEASE-ubuntu18.04/usr/bin:"${PATH}"
```

E, por fim, para saber se o Swift foi instalado corretamente, digite o comando:

```sh
$ swift --version
```

O resultado que você deve obter na tela é algo parecido com isso:

```sh
Swift version 4.2.3 (swift-4.2.3-RELEASE)
Target: x86_64-unknown-linux-gnu
```

Agora você pode começar a explorar o Swift no Ubuntu :D 

Para isso, utilize o comando:

```sh
$ swift
```

O REPL (Read-Eval-Print Loop) do Swift será inicializado. REPL é um programa bem simples em que você digita expressões da linguagem em questão, ele lê estas expressões ou trechos de código, executa e imprime o resultado caso não haja erros. Em caso de erros de sintaxe, o REPL informa ao usuário na tela.

Teste o REPL digitando o código no arquivo de exemplos deste repositório.

Digite cada linha e pressione o Enter. Em caso de funções (mais de uma linha), digite a primeira linha, pressione Enter, digite a próxima linha, pressione Enter e assim por diante até concluir a entrada da função.

Para sair do REPL, utilize o comando:

```sh
> :quit
```

*Note que quando estamos digitando no terminal, o símbolo é **$**, mas quando estamos utilizando o REPL, o símbolo é **>** ;)*

Outra maneira de explorar o Swift é utilizando o compilador. Para isso, vamos criar um arquivo com a extensão **.swift** utilizando o seguinte comando:

```sh
$ nano exemplo.swift
```

Este comando criará o arquivo *exemplo.swift* no diretório atual e também abrirá o editor **GNU nano**. Nele, podemos escrever o código em Swift para depois compilar :)

Na janela do nano, você digita o código (veja os exemplos neste repositório) e, quando terminar, tecle CTRL + X para sair. Como você fez alterações no arquivo, ele perguntará se você deseja salvar antes de sair. Basta digitar Y. Ele confirmará o nome do arquivo e é só pressionar Enter.

Para compilar seu arquivo, utilize o seguinte comando:

```sh
$ swiftc -o exemplo exemplo.swift
```

Se não houver nenhum errinho na hora de compilar, ele não dará nenhum retorno de texto na tela, simplesmente voltará para o prompt *$*.

O próximo passo é executar seu código, para isso, digite:

```sh
$ ./exemplo
```

*Sugestão: no link "The Swift Programming Language" você encontra a documentação oficial do Swift. Que tal dar uma olhada e explorar ainda mais essa linguagem? ;)*

## Links Interessantes

- Oracle VM VirtualBox User Manual - https://www.virtualbox.org/manual/ 
- The Swift Programming Language - https://docs.swift.org/swift-book/ 

## Sim, pode usar! :)
Você pode utilizar este tutorial à vontade desde que mantenha os créditos (meu nome + meu e-mail) e utilize somente para fins não-comerciais.
