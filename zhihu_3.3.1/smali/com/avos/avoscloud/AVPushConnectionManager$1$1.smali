.class Lcom/avos/avoscloud/AVPushConnectionManager$1$1;
.super Ljava/lang/Object;
.source "AVPushConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVPushConnectionManager$1;->onResponse(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/avos/avoscloud/AVPushConnectionManager$1;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVPushConnectionManager$1;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager$1$1;->this$1:Lcom/avos/avoscloud/AVPushConnectionManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 87
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$1$1;->this$1:Lcom/avos/avoscloud/AVPushConnectionManager$1;

    iget-object v0, v0, Lcom/avos/avoscloud/AVPushConnectionManager$1;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    iget-object v0, v0, Lcom/avos/avoscloud/AVPushConnectionManager;->connectionCallback:Lcom/avos/avoscloud/AVCallback;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$1$1;->this$1:Lcom/avos/avoscloud/AVPushConnectionManager$1;

    iget-object v0, v0, Lcom/avos/avoscloud/AVPushConnectionManager$1;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    iget-object v0, v0, Lcom/avos/avoscloud/AVPushConnectionManager;->connectionCallback:Lcom/avos/avoscloud/AVCallback;

    const/4 v1, 0x0

    new-instance v2, Lcom/avos/avoscloud/AVException;

    const/16 v3, 0x64

    const-string v4, "Failed to connect to server"

    invoke-direct {v2, v3, v4}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 91
    :cond_0
    return-void
.end method
