.class Lcom/ddtaxi/common/tracesdk/bo;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/ddtaxi/common/tracesdk/bk;


# direct methods
.method constructor <init>(Lcom/ddtaxi/common/tracesdk/bk;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/bo;->a:Lcom/ddtaxi/common/tracesdk/bk;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "#onReceive Wifi Broadcast"

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bo;->a:Lcom/ddtaxi/common/tracesdk/bk;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/ddtaxi/common/tracesdk/bk;->a(Lcom/ddtaxi/common/tracesdk/bk;J)V

    return-void
.end method
