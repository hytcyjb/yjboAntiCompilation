.class public Lcom/didi/common/helper/VoucherHelper;
.super Ljava/lang/Object;
.source "VoucherHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVoucherRedPointFromNative()I
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---redpoint----:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getVoucherPointFlag()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getVoucherPointFlag()I

    move-result v0

    return v0
.end method

.method public static getVoucherRedPointSupportFromServer()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/didi/common/helper/VoucherHelper$1;

    invoke-direct {v0}, Lcom/didi/common/helper/VoucherHelper$1;-><init>()V

    invoke-static {v0}, Lcom/didi/common/net/CommonRequest;->getVoucherRedPointerFlag(Lcom/didi/common/net/ResponseListener;)V

    .line 39
    return-void
.end method

.method public static setVoucherRedPointToNative(I)V
    .locals 2
    .parameter "redPointFlag"

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---redpoint--set--:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/common/config/Preferences;->setVoucherPointFlag(I)V

    .line 55
    invoke-static {p0}, Lcom/didi/common/listener/ListenerHub;->notifyRedPoint(I)V

    .line 56
    return-void
.end method
