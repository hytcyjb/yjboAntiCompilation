.class final Lcom/google/android/gms/internal/fr$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fr;->a(Landroid/content/Context;Lcom/google/android/gms/internal/bm;Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/internal/fi;)Lcom/google/android/gms/internal/fk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic mV:Landroid/content/Context;

.field final synthetic uk:Lcom/google/android/gms/internal/fi;

.field final synthetic ul:Lcom/google/android/gms/internal/ft;

.field final synthetic um:Lcom/google/android/gms/internal/gw$a;

.field final synthetic un:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/fi;Lcom/google/android/gms/internal/ft;Lcom/google/android/gms/internal/gw$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fr$1;->mV:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/fr$1;->uk:Lcom/google/android/gms/internal/fi;

    iput-object p3, p0, Lcom/google/android/gms/internal/fr$1;->ul:Lcom/google/android/gms/internal/ft;

    iput-object p4, p0, Lcom/google/android/gms/internal/fr$1;->um:Lcom/google/android/gms/internal/gw$a;

    iput-object p5, p0, Lcom/google/android/gms/internal/fr$1;->un:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/fr$1;->mV:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ay;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ay;-><init>()V

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/fr$1;->uk:Lcom/google/android/gms/internal/fi;

    iget-object v5, v3, Lcom/google/android/gms/internal/fi;->lD:Lcom/google/android/gms/internal/gt;

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/gv;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ay;ZZLcom/google/android/gms/internal/k;Lcom/google/android/gms/internal/gt;)Lcom/google/android/gms/internal/gv;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gv;->setWillNotDraw(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/fr$1;->ul:Lcom/google/android/gms/internal/ft;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ft;->b(Lcom/google/android/gms/internal/gv;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gv;->du()Lcom/google/android/gms/internal/gw;

    move-result-object v1

    const-string v2, "/invalidRequest"

    iget-object v3, p0, Lcom/google/android/gms/internal/fr$1;->ul:Lcom/google/android/gms/internal/ft;

    iget-object v3, v3, Lcom/google/android/gms/internal/ft;->us:Lcom/google/android/gms/internal/by;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/gw;->a(Ljava/lang/String;Lcom/google/android/gms/internal/by;)V

    const-string v2, "/loadAdURL"

    iget-object v3, p0, Lcom/google/android/gms/internal/fr$1;->ul:Lcom/google/android/gms/internal/ft;

    iget-object v3, v3, Lcom/google/android/gms/internal/ft;->ut:Lcom/google/android/gms/internal/by;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/gw;->a(Ljava/lang/String;Lcom/google/android/gms/internal/by;)V

    const-string v2, "/log"

    sget-object v3, Lcom/google/android/gms/internal/bx;->pG:Lcom/google/android/gms/internal/by;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/gw;->a(Ljava/lang/String;Lcom/google/android/gms/internal/by;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/fr$1;->um:Lcom/google/android/gms/internal/gw$a;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gw;->a(Lcom/google/android/gms/internal/gw$a;)V

    const-string v1, "Loading the JS library."

    invoke-static {v1}, Lcom/google/android/gms/internal/gs;->S(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/fr$1;->un:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gv;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
