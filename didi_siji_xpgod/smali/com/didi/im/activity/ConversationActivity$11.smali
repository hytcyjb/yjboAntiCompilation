.class Lcom/didi/im/activity/ConversationActivity$11;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/didi/frame/push/PushHelper$ReConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/im/activity/ConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/im/activity/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/didi/im/activity/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, Lcom/didi/im/activity/ConversationActivity$11;->this$0:Lcom/didi/im/activity/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPushReConnection()V
    .locals 2

    .prologue
    .line 630
    invoke-static {}, Lcom/didi/common/util/Utils;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$11;->this$0:Lcom/didi/im/activity/ConversationActivity;

    iget-object v0, v0, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$11;->this$0:Lcom/didi/im/activity/ConversationActivity;

    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity$11;->this$0:Lcom/didi/im/activity/ConversationActivity;

    iget-object v1, v1, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/im/db/IMDBDataHelper;->getMaxMidBySID(Ljava/lang/String;)I

    move-result v1

    #calls: Lcom/didi/im/activity/ConversationActivity;->getUnreadMessage(I)V
    invoke-static {v0, v1}, Lcom/didi/im/activity/ConversationActivity;->access$1000(Lcom/didi/im/activity/ConversationActivity;I)V

    .line 633
    :cond_0
    return-void
.end method
