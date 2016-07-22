.class Lcom/avos/avoscloud/PushService$2;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Lcom/avos/avospush/push/AVShutdownListener;


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
    .line 111
    iput-object p1, p0, Lcom/avos/avoscloud/PushService$2;->this$0:Lcom/avos/avoscloud/PushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutdown(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$000()Lcom/avos/avoscloud/AVPushConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->cleanupSocketConnection()V

    .line 115
    return-void
.end method
