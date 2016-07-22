.class Lcom/ddtaxi/common/tracesdk/bn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ddtaxi/common/tracesdk/bp;


# instance fields
.field final synthetic a:Lcom/ddtaxi/common/tracesdk/bk;


# direct methods
.method constructor <init>(Lcom/ddtaxi/common/tracesdk/bk;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/bn;->a:Lcom/ddtaxi/common/tracesdk/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bn;->a:Lcom/ddtaxi/common/tracesdk/bk;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bk;->c(Lcom/ddtaxi/common/tracesdk/bk;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bn;->a:Lcom/ddtaxi/common/tracesdk/bk;

    invoke-static {v1}, Lcom/ddtaxi/common/tracesdk/bk;->e(Lcom/ddtaxi/common/tracesdk/bk;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
