# Spotify HUD 1.8.9 — Created by 8l0m

Forge 1.8.9 client-side Spotify HUD prototype.

## Build on Windows

1. Install **JDK 8** and make sure `java -version` reports Java 8.
2. Open CMD in this folder.
3. Run:

```bat
gradlew.bat build
```

The first run downloads Gradle 2.14.1 automatically, then ForgeGradle downloads the required Forge/Minecraft dependencies.

The finished mod will be in:

`build\\libs\\spotifyhud-1.0.0.jar`

## Controls

- `O` — settings
- `P` — expand/collapse lyrics

## Spotify

Create a Spotify Developer app, put its Client ID into the mod settings, and use the redirect URI:

`http://127.0.0.1:53682/callback`

Created by **8l0m**.
