.class final Lcom/didi/ddrive/helper/ErrorHandleHelper$1;
.super Ljava/lang/Object;
.source "ErrorHandleHelper.java"

# interfaces
.implements Lcom/didi/common/listener/ThirdTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/helper/ErrorHandleHelper;->refreshTicket()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNewThirdTokenFail()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public getNewThirdTokenSuccess(Ljava/lang/String;)V
    .locals 3
    .parameter "newToken"

    .prologue
    .line 122
    const-string v0, "ErrorHandleHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tTicket : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/DriveAccountManager;->reLogin()V

    .line 124
    return-void
.end method
