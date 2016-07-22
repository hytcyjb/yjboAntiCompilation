.class Lcom/ddtaxi/a/a/it;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Ljava/util/Iterator;

.field final synthetic b:Lcom/ddtaxi/a/a/ir;


# direct methods
.method constructor <init>(Lcom/ddtaxi/a/a/ir;)V
    .locals 1

    iput-object p1, p0, Lcom/ddtaxi/a/a/it;->b:Lcom/ddtaxi/a/a/ir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/ddtaxi/a/a/ir;->a(Lcom/ddtaxi/a/a/ir;)Lcom/ddtaxi/a/a/gh;

    move-result-object v0

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gh;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/it;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/it;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/it;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/it;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
