.class Lcom/ddtaxi/a/a/er;
.super Lcom/ddtaxi/a/a/ew;


# instance fields
.field private final synthetic a:Lcom/ddtaxi/a/a/gk;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ddtaxi/a/a/gk;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/ddtaxi/a/a/er;->a:Lcom/ddtaxi/a/a/gk;

    iput-object p2, p0, Lcom/ddtaxi/a/a/er;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/ew;-><init>(Lcom/ddtaxi/a/a/ew;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/ddtaxi/a/a/dt;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/er;->a:Lcom/ddtaxi/a/a/gk;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gk;->f()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/er;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/dl;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/dt;

    move-result-object v0

    return-object v0
.end method
