<p align="center">
  <img src="/images/oh-my-git.png" width="400">
</p>
  
<p align="center">
  <b>Oh My Git!</b> é um jogo de código aberto para aprender a utilizar a ferramenta GIT!
</p>

## Jogue o jogo! 🎮

###### Plataformas suportadas:
Linux, MacOS e Windows

###### Downloads
- [**Original (Inglês)**](https://blinry.itch.io/oh-my-git)

- [**Fork (Português Brasileiro)**](../../releases/latest)

## Nos ajude a traduzi-lo! 🌎

Quanto mais contribuidores obtivermos, mais rápido o jogo será traduzido e melhor serão as traduções, portanto, sinta-se à vontade para contribuir com o projeto, até mesmo se for um novato com git :)

Os seguintes passos devem ser seguidos:

1. Veja se a parte do jogo em questão já não está sendo traduzida por outra pessoa [aqui nesta issue](https://github.com/d3cryptofc/oh-my-git-ptbr/issues/1), a menos que o propósito seja fazer uma melhoria ou correção de tradução ou gramática.

2. Faça um fork deste repositório, e antes de começar a trabalhar na alteração realize o pull request, após isso iremos atualizar à lista na issue e confirmaremos a mesclagem quando for possível.
<br/></br>Caso sinta insegurança, nos aguarde visualizar o seu pull request e comentar que você pode iniciar o trabalho sem nenhum problema.

3. As mensagens de commit deverão ser em inglês, seguindo o mesmo padrão do projeto, tenha como referência o [histórico de commits](../../commits/main), correções na mensagem de commit serão requisitados caso haja divergências com o padrão então não se preocupe caso fique com alguma dúvida.

Boa sorte! ❤️

## Reporte os bugs! 🐞

Se alguma coisa não funcionou ou parece quebrado, por favor deixe-nos saber! Você pode descrever o problema que estiver ocorrendo [abrindo uma issue no projeto original](https://github.com/git-learning-game/oh-my-git/issues).

E se caso você possua alguma ideia para um novo recurso, ficariamos felizes em te ouvir sobre! Também nesse caso, convidamos você pra [abrir uma issue](https://github.com/git-learning-game/oh-my-git/issues).

## Construa sua própria fase! 🧩

Quer contruir sua própria fase? Ótimo! Aqui está como fazer isto:

1. Baixe a versão 3.2.3 do [Godot Game Engine](https://github.com/godotengine/godot/releases/tag/3.2.3-stable) (versões maiores podem não funcionar).
1. Clone este repositório.
1. Rode o jogo – a forma mais fácil de fazer isso é rodar `godot .` estando na raiz do projeto.
1. Fique um pouco familiarizado com as fases que estão lá atualmente.
1. Dê uma olhada no diretório `levels`. É dividido em capítulos e cada fase é um arquivo.
1. Faça uma cópia de uma fase existente ou comece a escrever o seu próprio. Veja a documentação do formato abaixo.
1. Escreva e teste sua fase. Se você estiver feliz com isso, sinta-se livre para envia-la para nós em um pull request! <3

### Formato da fase ✍️

```
title = Este é o título da sua fase

[description]

Este texto será exibido quando a fase iniciar.

Ele descreve a tarefa ou desafio que o player irá resolver.

[cli]

(opcional) Este texto será exibido abaixo da descrição da fase em uma cor escura.

Ele deve dar dicas para o jogador sobre o uso de linha de comando e também talvez truques divertidos.

[congrats]

Este texto será exibido depois que o jogador concluir a fase.

Pode conter informação adicional, ou exercícios extras para praticar.

[setup]

# Comandos bash que irão definir o estado inicial da fase.
# Um `git init` inicial sempre é feito automaticamente.
# A branch padrão ao inicilaizar chama-se 'main'.

echo "Você" > pessoa_que_eh_incrivel
git add .
git commit -m "commit inicial"

[win]

# Comandos bash que irão verificar se a fase foi concluída.
# Escreva-os como se você estivesse escrevendo o corpo de
# uma função bash. Faça a função retornar 0 se ela for
# concluída, e um valor diferente de 0 caso contrário.
# Você pode usar 'return', e também, funções bash retornam
# o código de término da última instrução, a qual algumas
# vezes permite verificações muito sucintas. O comentário
# acima da sua instrução de verificação será exibido no
# jogo como uma condição de conquista.

# Verifica se no arquivo do último commit possui duas linhas:
test "$(git show HEAD:people_who_are_awesome | wc -l)" -ge 2
```

Uma fase pode consistir de múltiplos repositórios. Para ter mais de um, você pode usar seções como `[setup <name>]` e `[win <name>]`, onde `<name>` é o nome do remote. O nome do remote padrão é "yours". Todos os repositórios irão adicionar um ao outro como remote. Veja alguns exemplos de fases usando [remote](levels/remote).

### Orientação de fase

Ainda estamos explorando quais tipos de fases seriam divertidos! Portanto, sinta-se à vontade para experimentar coisas novas: introduções básicas com uma pequena história? Quebra-cabeças realmente difíceis? Fases onde você tem que encontrar informações? Fases em que você precisa corrigir um problema? Fases com três remotes?

## Contribua com código!

Para abrir o jogo no Godot Editor, rode `godot project.godot`. Você também pode rodar o jogo pressionando F5 pelo Godot Editor.

Sinta-se livre para fazer melhorias para o código e enviar pull requests! Há uma exceção: conflitos de merge em arquivos de cenas Godot tendem a ser dificil de resolver, antes de trabalhar em um existente arquivo *\*.tscn*, por favor entre em contato conosco.

Para construir seus próprios executáveis você irá precisar [instalar os templates de exportação do godot](https://docs.godotengine.org/en/stable/getting_started/workflow/export/exporting_projects.html). Então, rode `make`. No Debian/Ubuntu, o executável do Godot pode se chamar `godot3`, talvez seja preciso ajustar os caminhos no Makefile.

## Código de conduta

Nós temos um [Código de Conduta](CODE_OF_CONDUCT.md) em vigor que se aplica a todas as contribuições do projeto, incluindo issues e pull requests.

## Fundado por

<a href="https://www.bmbf.de/en/"><img src="https://www.bmbf.de/SiteGlobals/Frontend/Images/icons/_common/publisherlogo-en.svg?__blob=normal&v=5" alt="Logo of the German Ministry for Education and Research" height="100px"></a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a href="https://prototypefund.de/en/"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/PrototypeFund_Logo.svg/1200px-PrototypeFund_Logo.svg.png" alt="Logo of the Prototype Fund" height="100px"></a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a href="https://okfn.de/en/"><img src="https://prototypefund.de/wp-content/uploads/2016/07/logo-okfn.svg" alt="Logo of the Open Knowledge Foundation Germany" height="100px"></a>

## Obrigado

- "success" efeito sonoro por [Leszek_Szarzy, CC0](https://freesound.org/people/Leszek_Szary/sounds/171670/)
- "swish" efeito sonoro por [jawbutch, CC0](https://freesound.org/people/jawbutch/sounds/344408/)
- "swoosh" efeito sonoro por [WizardOZ, CC0](https://freesound.org/people/WizardOZ/sounds/419341/)
- "poof" efeito sonoro por [Saviraz, CC0](https://freesound.org/people/Saviraz/sounds/512217/)
- "buzzer" efeito sonoro por [Loyalty_Freak_Music, CC0](https://freesound.org/people/Loyalty_Freak_Music/sounds/407466/)
- "typewriter_ding" efeito sonoro por [_stubb, CC0](https://freesound.org/people/_stubb/sounds/406243/)

## Licença

[Blue Oak Model License 1.0.0](LICENSE.md) – a [Alternativa Moderna](https://writing.kemitchell.com/2019/03/09/Deprecation-Notice.html) para a Licença MIT. É uma leitura agradável! :)
