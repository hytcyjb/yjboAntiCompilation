.class Lcom/ddtaxi/a/a/eq;
.super Lcom/ddtaxi/a/a/ew;


# instance fields
.field private final synthetic a:Lcom/ddtaxi/a/a/gk;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/ddtaxi/a/a/gk;I)V
    .locals 1

    iput-object p1, p0, Lcom/ddtaxi/a/a/eq;->a:Lcom/ddtaxi/a/a/gk;

    iput p2, p0, Lcom/ddtaxi/a/a/eq;->b:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/ew;-><init>(Lcom/ddtaxi/a/a/ew;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/ddtaxi/a/a/dt;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/eq;->a:Lcom/ddtaxi/a/a/gk;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gk;->f()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dl;->j()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ddtaxi/a/a/eq;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dt;

    return-object v0
.end method
