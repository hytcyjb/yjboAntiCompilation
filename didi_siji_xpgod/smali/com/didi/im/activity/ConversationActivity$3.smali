.class Lcom/didi/im/activity/ConversationActivity$3;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/im/activity/ConversationActivity;->getUnreadMessage(I)V
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
    .line 237
    iput-object p1, p0, Lcom/didi/im/activity/ConversationActivity$3;->this$0:Lcom/didi/im/activity/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onOptionCallback(Lcom/didi/frame/push/PushOptionRecord;ZI[Ljava/lang/Object;)Z
    .locals 6
    .parameter "option"
    .parameter "success"
    .parameter "res"
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$3;->this$0:Lcom/didi/im/activity/ConversationActivity;

    move v1, p2

    move v3, v2

    move v4, v2

    move-object v5, p4

    #calls: Lcom/didi/im/activity/ConversationActivity;->onGetNewMessage(ZZZZ[Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/didi/im/activity/ConversationActivity;->access$700(Lcom/didi/im/activity/ConversationActivity;ZZZZ[Ljava/lang/Object;)V

    .line 241
    return v2
.end method
