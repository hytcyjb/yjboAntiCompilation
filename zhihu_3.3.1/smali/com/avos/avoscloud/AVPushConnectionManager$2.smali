.class Lcom/avos/avoscloud/AVPushConnectionManager$2;
.super Ljava/lang/Object;
.source "AVPushConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVPushConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVPushConnectionManager;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVPushConnectionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager$2;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 546
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$2;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/avos/avoscloud/AVPushConnectionManager$2;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    #getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$900(Lcom/avos/avoscloud/AVPushConnectionManager;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/avos/avoscloud/PushService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #setter for: Lcom/avos/avoscloud/AVPushConnectionManager;->pingAlarmIntent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$802(Lcom/avos/avoscloud/AVPushConnectionManager;Landroid/content/Intent;)Landroid/content/Intent;

    .line 547
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$2;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    #getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->pingAlarmIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$800(Lcom/avos/avoscloud/AVPushConnectionManager;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.avoscloud.ping.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$2;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    #getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$900(Lcom/avos/avoscloud/AVPushConnectionManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$2;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    #getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$900(Lcom/avos/avoscloud/AVPushConnectionManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager$2;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    #getter for: Lcom/avos/avoscloud/AVPushConnectionManager;->pingAlarmIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$800(Lcom/avos/avoscloud/AVPushConnectionManager;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 551
    :cond_0
    return-void
.end method
