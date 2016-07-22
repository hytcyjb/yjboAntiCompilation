.class final Lcom/ddtaxi/a/a/do;
.super Lcom/ddtaxi/a/a/dy;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/ddtaxi/a/a/dw;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ddtaxi/a/a/dw;)V
    .locals 0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/dy;-><init>()V

    iput-object p3, p0, Lcom/ddtaxi/a/a/do;->c:Lcom/ddtaxi/a/a/dw;

    iput-object p2, p0, Lcom/ddtaxi/a/a/do;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/ddtaxi/a/a/do;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/do;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/do;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/ddtaxi/a/a/dw;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/do;->c:Lcom/ddtaxi/a/a/dw;

    return-object v0
.end method

.method public n()Lcom/ddtaxi/a/a/gk;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/do;->c:Lcom/ddtaxi/a/a/dw;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dw;->a()Lcom/ddtaxi/a/a/bi;

    move-result-object v0

    return-object v0
.end method
