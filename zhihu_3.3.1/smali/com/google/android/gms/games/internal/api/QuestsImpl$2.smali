.class Lcom/google/android/gms/games/internal/api/QuestsImpl$2;
.super Lcom/google/android/gms/games/internal/api/QuestsImpl$ClaimImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/QuestsImpl;->claim(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Zq:Ljava/lang/String;

.field final synthetic Zr:Lcom/google/android/gms/games/internal/api/QuestsImpl;

.field final synthetic Zs:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/QuestsImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$2;->Zr:Lcom/google/android/gms/games/internal/api/QuestsImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$2;->Zq:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$2;->Zs:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/QuestsImpl$ClaimImpl;-><init>(Lcom/google/android/gms/games/internal/api/QuestsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$2;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$2;->Zq:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$2;->Zs:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->b(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
