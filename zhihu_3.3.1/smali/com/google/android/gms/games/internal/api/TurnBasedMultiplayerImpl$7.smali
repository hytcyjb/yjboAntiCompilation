.class Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$7;
.super Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$LeaveMatchImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;->leaveMatchDuringTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZZ:Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;

.field final synthetic aaa:Ljava/lang/String;

.field final synthetic aae:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$7;->ZZ:Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$7;->aaa:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$7;->aae:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$LeaveMatchImpl;-><init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$7;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$7;->aaa:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$7;->aae:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
