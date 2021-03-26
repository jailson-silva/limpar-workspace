# Contribution Guidelines

As contribuições para este projeto são muito bem-vindas! Seguimos um padrão de [Pull Request](https://help.github.com/articles/about-pull-requests/) para contribuições, sujeitas às seguintes diretrizes:

1. [Instale os hooks do pre-commit](#Instale-os-hooks-do-pre-commit)
1. [Atualize a documentação](#Atualize-adocumentação)
1. [Atualize os testes](#Atualize-os-testes)
1. [Atualize o código](#Atualize-o-código)
1. [Compatibilidade com versões anteriores](#Compatibilidade-com-versões-anteriores)
1. [Downtime](#Downtime)
1. [Crie seu PR](#Crie-seu-PR)
1. [Merge e release](#Merge-e-release)

## Instale os hooks do pre-commit

Este projeto vem com um `.pre-commit-config.yaml`, instale os hooks antes de iniciar o desenvolvimento. Exemplo `pre-commit install`.

Para ajudar nestas tasks de desenvolvimento existe um Makefile já configurado com as princiapais ações, para maiores detalhes de cada ação rode o comando:

```bash
make help

test/pre-commit                Run pre-commit hooks inside a build-tools docker container.
test/unit-tests                Rodas todos os testes dentro do container a build-tools. Equivalente ao comando 'go test ./test/...'.
clean                          Clean up cache and temporary files
help                           Help para todos os Targets
```

## Atualize a documentação

Encorajamos (não obrigatoriamente) a atualização da documentação antes de atualizar o código (Veja [Driven Development](https://tom.preston-werner.com/2010/08/23/readme-driven-development.html))

Isso garante uma documentação sempre atualizada e permite que voce pense no problema em alto nível, antes mesmo de implementar as mudanças.

## Atualize os testes

Também recomendamos (não obrigatoriamente) atualizar os testes antes de efetuar as alterações no código
(Veja [Test Driven Development](https://en.wikipedia.org/wiki/Test-driven_development)).

Isso significa que voce deve adicionar/atualizar os testes e verificar se o case que voce está implementando apresenta falha, em seguida pode começar a implementar as alterações no código para que seu teste seja aprovado.

## Atualize o código

Agora voce poder fazer suas alterações de código, como dica, teste constantemente para se certificar de que tudo está funcionando como esperado. Faça [commits](https://help.github.com/en/desktop/contributing-to-projects/committing-and-reviewing-changes-to-your-project)
frequentemente e tente adicionar mensagens de commit coerentes.

Se voce fizer uma alteração que seja incompatível com alguma versão anterior e isso não puder ser evitado, certifique-se de avisar quando fazer o seu PR, explicando porque a mudança é absolutamente necessária.

Enquanto estiver desenvolvendo, tenha em mente duas coisas:

1. Compatibilidade com versões anteriores
1. Downtime

### Compatibilidade com versões anteriores

Faça todos os esforços para evitar alterações incompatíveis com versões anteriores desnecessárias. Com o código Terraform, isso significa:

1. Não exclua, renomeie ou altere o tipo de variáveis ​​de entrada.
1. Se você adicionar uma variável de entrada, ela deve ter um `padrão`.
1. Não exclua, renomeie ou altere o tipo de variáveis ​​de saída.
1. Não exclua ou renomeie um módulo na pasta `modules`.

Se uma alteração incompatível com as versões anteriores não puder ser evitada, certifique-se de avisar quando enviar um PR explicando porque a mudança é absolutamente necessária.

## Crie seu PR

[Crie um pull request](https://help.github.com/articles/creating-a-pull-request/) com as suas mudanças.

Como boas práticas verifique os seguintes pontos:

1. Uma breve descrição da mudança proposta.
1. Notas de incompatibilidade com versões anteriores.

## Merge e release

Os [CODEOWNERS](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/about-code-owners) deste repositório revisará seu código com as mudanças propostas. Se tudo estiver OK, merge será efetuado e uma release nova será criada seguindo os principios de [Semantic Versioning (SemVer)](https://semver.org/)
