.class Lcom/google/android/gms/games/internal/api/InvitationsImpl$2;
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
.field final synthetic YF:I

.field final synthetic Yi:Ljava/lang/String;


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/InvitationsImpl$2;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/InvitationsImpl$2;->Yi:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/games/internal/api/InvitationsImpl$2;->YF:I

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->e(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;I)V

    return-void
.end method
