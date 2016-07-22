.class public Lcom/avos/avoscloud/BroadcastUtil;
.super Ljava/lang/Object;
.source "BroadcastUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isOperationValid(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)Z
    .locals 2
    .parameter

    .prologue
    .line 82
    if-eqz p0, :cond_0

    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNKNOWN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-static {p4}, Lcom/avos/avoscloud/BroadcastUtil;->isOperationValid(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getOperation()Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 73
    const-string v0, "callbackclient"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const-string v0, "callbackconversation"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/j;->a(Landroid/content/Context;)Landroid/support/v4/content/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/j;->a(Landroid/content/Intent;)Z

    .line 79
    :cond_1
    return-void
.end method

.method public static sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-static {p3}, Lcom/avos/avoscloud/BroadcastUtil;->isOperationValid(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p3}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getOperation()Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    const-string v0, "callbackclient"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const-string v0, "callbackconversation"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/j;->a(Landroid/content/Context;)Landroid/support/v4/content/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/j;->a(Landroid/content/Intent;)Z

    .line 47
    :cond_1
    return-void
.end method

.method public static sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-static {p4}, Lcom/avos/avoscloud/BroadcastUtil;->isOperationValid(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {p4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getOperation()Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    if-eqz p3, :cond_0

    .line 56
    const-string v0, "callbackException"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 58
    :cond_0
    const-string v0, "callbackclient"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    const-string v0, "callbackconversation"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/j;->a(Landroid/content/Context;)Landroid/support/v4/content/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/j;->a(Landroid/content/Intent;)Z

    .line 64
    :cond_2
    return-void
.end method

.method public static sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 18
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 20
    if-nez p2, :cond_1

    .line 27
    :cond_0
    :goto_0
    const-string v2, "AV_APPLICATION_ID"

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v2, "AV_SESSION_INTENT_STATUS_KEY"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 29
    const-string v2, "AV_SESSION_INTENT_SELFID_KEY"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 31
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 32
    return-void

    .line 22
    :cond_1
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 23
    const-string v2, "AV_SESSION_INTENT_DATA_KEY"

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_2
    instance-of v2, p2, Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 25
    const-string v2, "AV_SESSION_INTENT_THROWABLE_KEY"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0
.end method
