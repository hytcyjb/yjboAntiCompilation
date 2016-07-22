.class Lcom/ddtaxi/a/a/hl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ddtaxi/a/a/hh;


# instance fields
.field private final synthetic a:Ljava/lang/Class;

.field private final synthetic b:Lcom/ddtaxi/a/a/gk;

.field private final synthetic c:Lcom/ddtaxi/a/a/hh;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/ddtaxi/a/a/gk;Lcom/ddtaxi/a/a/hh;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/hl;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/ddtaxi/a/a/hl;->b:Lcom/ddtaxi/a/a/gk;

    iput-object p3, p0, Lcom/ddtaxi/a/a/hl;->c:Lcom/ddtaxi/a/a/hh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ddtaxi/a/a/gk;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/hl;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gk;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/hl;->c:Lcom/ddtaxi/a/a/hh;

    invoke-interface {v1, v0}, Lcom/ddtaxi/a/a/hh;->a(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/ddtaxi/a/a/hl;->b:Lcom/ddtaxi/a/a/gk;

    invoke-static {v0, p1}, Lcom/ddtaxi/a/a/hk;->a(Lcom/ddtaxi/a/a/gk;Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gk;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/ddtaxi/a/a/gk;

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/hl;->a(Lcom/ddtaxi/a/a/gk;)V

    return-void
.end method
