.class Lcom/avos/avoscloud/PushService$1;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Lcom/avos/avospush/push/AVConnectivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PushService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/PushService;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/PushService;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/avos/avoscloud/PushService$1;->this$0:Lcom/avos/avoscloud/PushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMobile(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$000()Lcom/avos/avoscloud/AVPushConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->initConnection()V

    .line 96
    return-void
.end method

.method public onNotConnected(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 105
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$000()Lcom/avos/avoscloud/AVPushConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->cleanupSocketConnection()V

    .line 106
    return-void
.end method

.method public onWifi(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$000()Lcom/avos/avoscloud/AVPushConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->initConnection()V

    .line 101
    return-void
.end method
