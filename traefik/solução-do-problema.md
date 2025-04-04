
# Solução para Problemas com Traefik e Sonarr

## Resumo da Solução

1. **Adicionou o `UrlBase` no arquivo de configuração do Sonarr (`config.xml`)**:
   ```xml
   <UrlBase>/sonarr-test</UrlBase>

   
Resumo da Solução:
Adicionou o UrlBase no arquivo de configuração do Sonarr (config.xml):
xml
Copy code
<UrlBase>/sonarr-test</UrlBase>
Reiniciou o contêiner do Sonarr para aplicar as mudanças:
bash
Copy code
docker restart sonarr-test
Com isso, o Sonarr passou a entender que está sendo servido sob o prefixo /sonarr-test e ajustou os caminhos dos arquivos estáticos.
Por que isso foi necessário?
O Sonarr, por padrão, espera ser acessado na raiz (/). Quando você usa um prefixo (/sonarr-test), ele precisa ser configurado explicitamente para ajustar as URLs dos recursos estáticos (como CSS e JS) para incluir esse prefixo. Sem essa configuração, o Traefik redirecionava corretamente as requisições, mas o Sonarr não localizava os arquivos.

Se precisar de mais ajuda com o Sonarr, Traefik ou qualquer outra coisa, é só chamar! 