.class final Lcom/ddtaxi/common/tracesdk/be;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/ddtaxi/common/tracesdk/TraceService;


# direct methods
.method public constructor <init>(Lcom/ddtaxi/common/tracesdk/TraceService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/be;->a:Lcom/ddtaxi/common/tracesdk/TraceService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/be;->a:Lcom/ddtaxi/common/tracesdk/TraceService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    #calls: Lcom/ddtaxi/common/tracesdk/TraceService;->onHandleIntent(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lcom/ddtaxi/common/tracesdk/TraceService;->access$0(Lcom/ddtaxi/common/tracesdk/TraceService;Landroid/content/Intent;)V

    return-void
.end method
