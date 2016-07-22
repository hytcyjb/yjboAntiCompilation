.class public Lcom/avos/avospush/push/AVShutdownReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AVShutdownReceiver.java"


# instance fields
.field private listener:Lcom/avos/avospush/push/AVShutdownListener;


# direct methods
.method public constructor <init>(Lcom/avos/avospush/push/AVShutdownListener;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/avos/avospush/push/AVShutdownReceiver;->listener:Lcom/avos/avospush/push/AVShutdownListener;

    .line 16
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/avos/avospush/push/AVShutdownReceiver;->listener:Lcom/avos/avospush/push/AVShutdownListener;

    invoke-interface {v0, p1}, Lcom/avos/avospush/push/AVShutdownListener;->onShutdown(Landroid/content/Context;)V

    .line 20
    return-void
.end method
