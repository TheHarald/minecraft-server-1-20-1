```bash
docker build -t minecraft-server .
```

```bash
docker run -d -p 25565:25565 --name minecraft-server minecraft-server
```
