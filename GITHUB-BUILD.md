# Build on GitHub without installing Java

1. Create a GitHub repository and upload the contents of this folder.
2. Open the repository's **Actions** tab.
3. Select **Build Minecraft 1.8.9 Mod**.
4. Click **Run workflow**.
5. Wait for the green check.
6. Open the completed workflow run.
7. At the bottom, under **Artifacts**, download `SpotifyHUD-1.8.9-8l0m`.
8. The downloaded ZIP contains the built `.jar`.

The workflow uses Java 8 because this project targets Forge 1.8.9 / ForgeGradle 2.1.
