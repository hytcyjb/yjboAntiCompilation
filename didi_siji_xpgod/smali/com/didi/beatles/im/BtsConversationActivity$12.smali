.class Lcom/didi/beatles/im/BtsConversationActivity$12;
.super Ljava/lang/Object;
.source "BtsConversationActivity.java"

# interfaces
.implements Lcom/didi/frame/push/PushHelper$ReConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/im/BtsConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/im/BtsConversationActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/im/BtsConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 673
    iput-object p1, p0, Lcom/didi/beatles/im/BtsConversationActivity$12;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPushReConnection()V
    .locals 2

    .prologue
    .line 677
    invoke-static {}, Lcom/didi/common/util/Utils;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$12;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/beatles/im/BtsConversationActivity;->access$1200(Lcom/didi/beatles/im/BtsConversationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$12;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity$12;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->sessionId:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/beatles/im/BtsConversationActivity;->access$1200(Lcom/didi/beatles/im/BtsConversationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/im/db/IMDBDataHelper;->getMaxMidBySID(Ljava/lang/String;)I

    move-result v1

    #calls: Lcom/didi/beatles/im/BtsConversationActivity;->getUnreadMessage(I)V
    invoke-static {v0, v1}, Lcom/didi/beatles/im/BtsConversationActivity;->access$1300(Lcom/didi/beatles/im/BtsConversationActivity;I)V

    .line 680
    :cond_0
    return-void
.end method
