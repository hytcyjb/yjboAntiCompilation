.class Lcom/google/android/gms/games/internal/api/AchievementsImpl$2;
.super Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/AchievementsImpl;->reveal(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Yg:Lcom/google/android/gms/games/internal/api/AchievementsImpl;

.field final synthetic Yj:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/AchievementsImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$2;->Yg:Lcom/google/android/gms/games/internal/api/AchievementsImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$2;->Yj:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$2;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$2;->Yj:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->b(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;)V

    return-void
.end method
