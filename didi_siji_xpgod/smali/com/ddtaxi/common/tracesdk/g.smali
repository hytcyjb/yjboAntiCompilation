.class Lcom/ddtaxi/common/tracesdk/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ddtaxi/common/tracesdk/h;


# instance fields
.field final synthetic a:Lcom/ddtaxi/common/tracesdk/f;


# direct methods
.method constructor <init>(Lcom/ddtaxi/common/tracesdk/f;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/g;->a:Lcom/ddtaxi/common/tracesdk/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/g;->a:Lcom/ddtaxi/common/tracesdk/f;

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/f;->b()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/g;->a:Lcom/ddtaxi/common/tracesdk/f;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/f;->a(Lcom/ddtaxi/common/tracesdk/f;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bf;->a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/bf;->b()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/g;->a:Lcom/ddtaxi/common/tracesdk/f;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/f;->b(Lcom/ddtaxi/common/tracesdk/f;)Lcom/ddtaxi/common/tracesdk/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/g;->a:Lcom/ddtaxi/common/tracesdk/f;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/f;->b(Lcom/ddtaxi/common/tracesdk/f;)Lcom/ddtaxi/common/tracesdk/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/ddtaxi/common/tracesdk/h;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/g;->a:Lcom/ddtaxi/common/tracesdk/f;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/f;->b(Lcom/ddtaxi/common/tracesdk/f;)Lcom/ddtaxi/common/tracesdk/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/g;->a:Lcom/ddtaxi/common/tracesdk/f;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/f;->b(Lcom/ddtaxi/common/tracesdk/f;)Lcom/ddtaxi/common/tracesdk/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/ddtaxi/common/tracesdk/h;->b()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/g;->a:Lcom/ddtaxi/common/tracesdk/f;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/f;->b(Lcom/ddtaxi/common/tracesdk/f;)Lcom/ddtaxi/common/tracesdk/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/g;->a:Lcom/ddtaxi/common/tracesdk/f;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/f;->b(Lcom/ddtaxi/common/tracesdk/f;)Lcom/ddtaxi/common/tracesdk/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/ddtaxi/common/tracesdk/h;->c()V

    :cond_0
    return-void
.end method
