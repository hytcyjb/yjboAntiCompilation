.class Lcom/didi/im/activity/ConversationActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "ConversationActivity.java"


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
    .line 221
    iput-object p1, p0, Lcom/didi/im/activity/ConversationActivity$2;->this$0:Lcom/didi/im/activity/ConversationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$2;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #getter for: Lcom/didi/im/activity/ConversationActivity;->mTitleBar:Lcom/didi/im/component/ConversationTitleBar;
    invoke-static {v0}, Lcom/didi/im/activity/ConversationActivity;->access$600(Lcom/didi/im/activity/ConversationActivity;)Lcom/didi/im/component/ConversationTitleBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$2;->this$0:Lcom/didi/im/activity/ConversationActivity;

    iget-object v0, v0, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$2;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #getter for: Lcom/didi/im/activity/ConversationActivity;->mTitleBar:Lcom/didi/im/component/ConversationTitleBar;
    invoke-static {v0}, Lcom/didi/im/activity/ConversationActivity;->access$600(Lcom/didi/im/activity/ConversationActivity;)Lcom/didi/im/component/ConversationTitleBar;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity$2;->this$0:Lcom/didi/im/activity/ConversationActivity;

    iget-object v1, v1, Lcom/didi/im/activity/ConversationActivity;->sessionId:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/im/helper/IMChatHelper;->getConversationTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/im/component/ConversationTitleBar;->setTitle(Ljava/lang/String;)V

    .line 228
    :cond_0
    return-void
.end method
