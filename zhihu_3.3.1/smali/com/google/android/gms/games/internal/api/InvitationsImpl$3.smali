.class Lcom/google/android/gms/games/internal/api/InvitationsImpl$3;
.super Lcom/google/android/gms/games/internal/api/InvitationsImpl$LoadInvitationsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/InvitationsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic YH:Ljava/lang/String;


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/InvitationsImpl$3;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/InvitationsImpl$3;->YH:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->o(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;)V

    return-void
.end method
