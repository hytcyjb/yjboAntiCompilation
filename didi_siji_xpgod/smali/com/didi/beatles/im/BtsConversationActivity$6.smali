.class Lcom/didi/beatles/im/BtsConversationActivity$6;
.super Ljava/lang/Object;
.source "BtsConversationActivity.java"

# interfaces
.implements Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/im/BtsConversationActivity;->getPrivousMessage()V
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
    .line 419
    iput-object p1, p0, Lcom/didi/beatles/im/BtsConversationActivity$6;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onOptionCallback(Lcom/didi/frame/push/PushOptionRecord;ZI[Ljava/lang/Object;)Z
    .locals 3
    .parameter "option"
    .parameter "success"
    .parameter "res"
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    .line 422
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$6;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    const/4 v1, 0x1

    #calls: Lcom/didi/beatles/im/BtsConversationActivity;->onGetNewMessage(ZZZ[Ljava/lang/Object;)V
    invoke-static {v0, p2, v2, v1, p4}, Lcom/didi/beatles/im/BtsConversationActivity;->access$800(Lcom/didi/beatles/im/BtsConversationActivity;ZZZ[Ljava/lang/Object;)V

    .line 423
    return v2
.end method