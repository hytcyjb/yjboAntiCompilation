.class public abstract Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;
.super Lcom/avos/avoscloud/AVIMEventHandler;
.source "AVIMConversationEventHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/avos/avoscloud/AVIMEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onInvited(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;)V
.end method

.method public abstract onKicked(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;)V
.end method

.method public abstract onMemberJoined(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onMemberLeft(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public onOfflineMessagesUnread(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    return-void
.end method

.method protected final processEvent0(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    check-cast p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    .line 74
    packed-switch p1, :pswitch_data_0

    .line 90
    :goto_0
    :pswitch_0
    return-void

    .line 76
    :pswitch_1
    iget-object v0, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    check-cast p3, Ljava/util/List;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, v0, p4, p3, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onMemberLeft(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :pswitch_2
    iget-object v0, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    check-cast p3, Ljava/util/List;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, v0, p4, p3, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onMemberJoined(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :pswitch_3
    iget-object v0, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, v0, p4, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onInvited(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :pswitch_4
    iget-object v0, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, v0, p4, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onKicked(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :pswitch_5
    iget-object v0, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, p4, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onOfflineMessagesUnread(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;I)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0xc354
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
