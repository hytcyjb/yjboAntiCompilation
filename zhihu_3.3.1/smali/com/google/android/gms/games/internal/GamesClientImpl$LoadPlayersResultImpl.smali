.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayersResultImpl;
.super Lcom/google/android/gms/common/api/a;

# interfaces
.implements Lcom/google/android/gms/games/Players$LoadPlayersResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadPlayersResultImpl"
.end annotation


# instance fields
.field private final WZ:Lcom/google/android/gms/games/PlayerBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/PlayerBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/PlayerBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayersResultImpl;->WZ:Lcom/google/android/gms/games/PlayerBuffer;

    return-void
.end method


# virtual methods
.method public getPlayers()Lcom/google/android/gms/games/PlayerBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayersResultImpl;->WZ:Lcom/google/android/gms/games/PlayerBuffer;

    return-object v0
.end method
