.class Lcom/didi/beatles/im/BtsConversationActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "BtsConversationActivity.java"


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
    .line 249
    iput-object p1, p0, Lcom/didi/beatles/im/BtsConversationActivity$2;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$2;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->mTitleBar:Lcom/didi/im/component/ConversationTitleBar;
    invoke-static {v0}, Lcom/didi/beatles/im/BtsConversationActivity;->access$600(Lcom/didi/beatles/im/BtsConversationActivity;)Lcom/didi/im/component/ConversationTitleBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$2;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->sessionTitle:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/beatles/im/BtsConversationActivity;->access$700(Lcom/didi/beatles/im/BtsConversationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$2;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->mTitleBar:Lcom/didi/im/component/ConversationTitleBar;
    invoke-static {v0}, Lcom/didi/beatles/im/BtsConversationActivity;->access$600(Lcom/didi/beatles/im/BtsConversationActivity;)Lcom/didi/im/component/ConversationTitleBar;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/im/BtsConversationActivity$2;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->sessionTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/beatles/im/BtsConversationActivity;->access$700(Lcom/didi/beatles/im/BtsConversationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/im/component/ConversationTitleBar;->setTitle(Ljava/lang/String;)V

    .line 256
    :cond_0
    return-void
.end method
