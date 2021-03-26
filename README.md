# Clean Workspace Github Action

Uma action simples para remover os arquivos criados dentro do workspace nos runners self-hosted.

Quando um job do Github Actions roda por vezes ele cria arquivos temporários e estes arquivos podem ter um #  diferentes. Isso cria uma mistura de propriedade de arquivos que não podem ser removidos pelo usuário que está executando a action.

Parece que a action de checkout é executada com o usuário do host que configurou o runner, mas os arquivos criados por outras
action são executadas pelo root. Com isso check-out subsequente não é capaz de remover os arquivos criados a partir da execução anterior (pois estão com o usuáio root como onwer). O Action Runners não faz está limpeza automaticamente, portanto foi desenvolvido está action para lidar com este gap.

## Como utilizar está action

```yaml
name: Build and Clean

on:
  push:
    branches-ignore:
      - master
  unit-tests:
    runs-on: ubuntu-latest # Actions crida principamente para runners Self-hosted
    name: Unit Tests
    steps:
      - name: Clean Worspace
        uses: jailson-silva/limpar-workspace@v1
      - name: Checkout
        uses: actions/checkout@v2
      - name: Run Unit Tests
        run: make test/unit-tests
```
