.class abstract Lcom/avos/avoscloud/im/v2/MessageHandler;
.super Lcom/avos/avoscloud/AVIMEventHandler;
.source "MessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
        ">",
        "Lcom/avos/avoscloud/AVIMEventHandler;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/avos/avoscloud/AVIMEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            ")V"
        }
    .end annotation
.end method

.method protected final processEvent0(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    check-cast p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    .line 16
    packed-switch p1, :pswitch_data_0

    .line 24
    :goto_0
    return-void

    .line 18
    :pswitch_0
    check-cast p3, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iget-object v0, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-virtual {p0, p3, p4, v0}, Lcom/avos/avoscloud/im/v2/MessageHandler;->onMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    goto :goto_0

    .line 21
    :pswitch_1
    check-cast p3, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iget-object v0, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-virtual {p0, p3, p4, v0}, Lcom/avos/avoscloud/im/v2/MessageHandler;->onMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    goto :goto_0

    .line 16
    :pswitch_data_0
    .packed-switch 0xc350
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
