.class Lcom/google/android/gms/internal/ld$1;
.super Lcom/google/android/gms/internal/kk$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ld;->startSession(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic TY:Lcom/google/android/gms/fitness/data/Session;

.field final synthetic TZ:Lcom/google/android/gms/internal/ld;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ld;Lcom/google/android/gms/fitness/data/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ld$1;->TZ:Lcom/google/android/gms/internal/ld;

    iput-object p2, p0, Lcom/google/android/gms/internal/ld$1;->TY:Lcom/google/android/gms/fitness/data/Session;

    invoke-direct {p0}, Lcom/google/android/gms/internal/kk$c;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/kk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ld$1;->a(Lcom/google/android/gms/internal/kk;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/kk;)V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/kk$b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/kk$b;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/kk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/kk;->jb()Lcom/google/android/gms/internal/kp;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/fitness/request/w$a;

    invoke-direct {v3}, Lcom/google/android/gms/fitness/request/w$a;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/ld$1;->TY:Lcom/google/android/gms/fitness/data/Session;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/request/w$a;->b(Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/request/w$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/request/w$a;->jA()Lcom/google/android/gms/fitness/request/w;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/internal/kp;->a(Lcom/google/android/gms/fitness/request/w;Lcom/google/android/gms/internal/kt;Ljava/lang/String;)V

    return-void
.end method
