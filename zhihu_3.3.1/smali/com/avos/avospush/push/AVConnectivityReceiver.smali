.class public Lcom/avos/avospush/push/AVConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AVConnectivityReceiver.java"


# instance fields
.field private final listener:Lcom/avos/avospush/push/AVConnectivityListener;


# direct methods
.method public constructor <init>(Lcom/avos/avospush/push/AVConnectivityListener;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/avos/avospush/push/AVConnectivityReceiver;->listener:Lcom/avos/avospush/push/AVConnectivityListener;

    .line 18
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->getConnectivityStatus(Landroid/content/Context;)I

    move-result v0

    .line 23
    packed-switch v0, :pswitch_data_0

    .line 39
    :goto_0
    return-void

    .line 25
    :pswitch_0
    iget-object v0, p0, Lcom/avos/avospush/push/AVConnectivityReceiver;->listener:Lcom/avos/avospush/push/AVConnectivityListener;

    invoke-interface {v0, p1}, Lcom/avos/avospush/push/AVConnectivityListener;->onMobile(Landroid/content/Context;)V

    goto :goto_0

    .line 29
    :pswitch_1
    iget-object v0, p0, Lcom/avos/avospush/push/AVConnectivityReceiver;->listener:Lcom/avos/avospush/push/AVConnectivityListener;

    invoke-interface {v0, p1}, Lcom/avos/avospush/push/AVConnectivityListener;->onWifi(Landroid/content/Context;)V

    goto :goto_0

    .line 33
    :pswitch_2
    iget-object v0, p0, Lcom/avos/avospush/push/AVConnectivityReceiver;->listener:Lcom/avos/avospush/push/AVConnectivityListener;

    invoke-interface {v0, p1}, Lcom/avos/avospush/push/AVConnectivityListener;->onNotConnected(Landroid/content/Context;)V

    goto :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
