.class Lcom/ddtaxi/common/tracesdk/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ddtaxi/common/tracesdk/a/d;


# instance fields
.field final synthetic a:Lcom/ddtaxi/common/tracesdk/a/a;


# direct methods
.method constructor <init>(Lcom/ddtaxi/common/tracesdk/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/a/b;->a:Lcom/ddtaxi/common/tracesdk/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mInnerResponseListener#onReceiveError:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/a/b;->a:Lcom/ddtaxi/common/tracesdk/a/a;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/a/a;->a(Lcom/ddtaxi/common/tracesdk/a/a;)Lcom/ddtaxi/common/tracesdk/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/a/b;->a:Lcom/ddtaxi/common/tracesdk/a/a;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/a/a;->a(Lcom/ddtaxi/common/tracesdk/a/a;)Lcom/ddtaxi/common/tracesdk/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ddtaxi/common/tracesdk/a/d;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mInnerResponseListener#onReceiveResponse:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/a/b;->a:Lcom/ddtaxi/common/tracesdk/a/a;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/a/a;->a(Lcom/ddtaxi/common/tracesdk/a/a;)Lcom/ddtaxi/common/tracesdk/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/a/b;->a:Lcom/ddtaxi/common/tracesdk/a/a;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/a/a;->a(Lcom/ddtaxi/common/tracesdk/a/a;)Lcom/ddtaxi/common/tracesdk/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ddtaxi/common/tracesdk/a/d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
