.class final Lcom/google/android/gms/appstate/AppStateManager$5;
.super Lcom/google/android/gms/appstate/AppStateManager$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/appstate/AppStateManager;->delete(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic CX:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/gms/appstate/AppStateManager$5;->CX:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/appstate/AppStateManager$b;-><init>(Lcom/google/android/gms/appstate/AppStateManager$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ib;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$5;->a(Lcom/google/android/gms/internal/ib;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ib;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/appstate/AppStateManager$5;->CX:I

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/ib;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;I)V

    return-void
.end method

.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$5;->g(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/appstate/AppStateManager$5$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$5$1;-><init>(Lcom/google/android/gms/appstate/AppStateManager$5;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
