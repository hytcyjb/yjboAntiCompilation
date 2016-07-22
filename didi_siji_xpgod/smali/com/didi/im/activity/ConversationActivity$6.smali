.class Lcom/didi/im/activity/ConversationActivity$6;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/im/activity/ConversationActivity;->sendTextMessage(Lcom/didi/im/model/IMChatRecord;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/im/activity/ConversationActivity;

.field final synthetic val$chatRecord:Lcom/didi/im/model/IMChatRecord;

.field final synthetic val$resend:Z


# direct methods
.method constructor <init>(Lcom/didi/im/activity/ConversationActivity;Lcom/didi/im/model/IMChatRecord;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/didi/im/activity/ConversationActivity$6;->this$0:Lcom/didi/im/activity/ConversationActivity;

    iput-object p2, p0, Lcom/didi/im/activity/ConversationActivity$6;->val$chatRecord:Lcom/didi/im/model/IMChatRecord;

    iput-boolean p3, p0, Lcom/didi/im/activity/ConversationActivity$6;->val$resend:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onOptionCallback(Lcom/didi/frame/push/PushOptionRecord;ZI[Ljava/lang/Object;)Z
    .locals 7
    .parameter "option"
    .parameter "success"
    .parameter "res"
    .parameter "args"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$6;->this$0:Lcom/didi/im/activity/ConversationActivity;

    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity$6;->val$chatRecord:Lcom/didi/im/model/IMChatRecord;

    iget-boolean v2, p0, Lcom/didi/im/activity/ConversationActivity$6;->val$resend:Z

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    #calls: Lcom/didi/im/activity/ConversationActivity;->updateMessage(Lcom/didi/im/model/IMChatRecord;ZLcom/didi/frame/push/PushOptionRecord;ZI[Ljava/lang/Object;)V
    invoke-static/range {v0 .. v6}, Lcom/didi/im/activity/ConversationActivity;->access$800(Lcom/didi/im/activity/ConversationActivity;Lcom/didi/im/model/IMChatRecord;ZLcom/didi/frame/push/PushOptionRecord;ZI[Ljava/lang/Object;)V

    .line 426
    const/4 v0, 0x0

    return v0
.end method
