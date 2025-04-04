A unica configuração que consegui fazer funcionar para executar o pihole com traefik foi essa:

```yml
- "traefik.http.routers.pihole-https.rule=Host(`pihole.home-media.cloud`)"
- "traefik.http.middlewares.pihole-https-go-to-admin.redirectregex.regex=^https:\\/\\/([^\\/]+)\\/?$$"
- "traefik.http.middlewares.pihole-https-go-to-admin.redirectregex.replacement=https://$$1/admin/index.php" 
```

A configuração com o PathPrefix conseguiu até bater no pihole, mas o redirecionamento para o /admin não consegui fazer funcionar. 

> PS: O pihole demora para inicializar, caso tentarmos acessar a url de imediato será retornado um 404, isso pode confundir e dar a entender que o traefik não está funcionando corretamente. Mas basta esperar até aplicação inicializar por completo.

Possui static IP para caso o servidor vir a baixo.