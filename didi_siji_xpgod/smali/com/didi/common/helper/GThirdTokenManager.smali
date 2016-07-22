.class public Lcom/didi/common/helper/GThirdTokenManager;
.super Ljava/lang/Object;
.source "GThirdTokenManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GThirdTokenManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGloableThirdToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getTToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static refreshGThirdToken(ZLcom/didi/common/listener/ThirdTokenListener;)V
    .locals 6
    .parameter "refreshNow"
    .parameter "listener"

    .prologue
    .line 31
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, token:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 33
    .local v0, currentTime:J
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez p0, :cond_0

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->isLimitInTenMinute(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    :cond_0
    const-string v3, "GThirdTokenManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start request, current ticket : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->getTToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v3, Lcom/didi/common/helper/GThirdTokenManager$1;

    invoke-direct {v3, v0, v1, p1, p0}, Lcom/didi/common/helper/GThirdTokenManager$1;-><init>(JLcom/didi/common/listener/ThirdTokenListener;Z)V

    invoke-static {v3}, Lcom/didi/common/net/PassPortRequest;->passportGetTTicket(Lcom/didi/common/net/ResponseListener;)V

    .line 84
    :cond_1
    return-void
.end method
