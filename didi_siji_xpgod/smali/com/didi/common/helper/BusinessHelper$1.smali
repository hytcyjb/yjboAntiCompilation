.class final Lcom/didi/common/helper/BusinessHelper$1;
.super Lcom/didi/common/net/ResponseListener;
.source "BusinessHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/BusinessHelper;->toBusiness()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/BusinessConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Lcom/didi/common/model/BusinessConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/helper/BusinessHelper$1;->onFinish(Lcom/didi/common/model/BusinessConfig;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/BusinessConfig;)V
    .locals 4
    .parameter "businessConfig"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 26
    iget v2, p1, Lcom/didi/common/model/BusinessConfig;->errno:I

    if-nez v2, :cond_0

    iget v2, p1, Lcom/didi/common/model/BusinessConfig;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 27
    iget-object v1, p1, Lcom/didi/common/model/BusinessConfig;->product:Ljava/lang/String;

    .line 28
    .local v1, product:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/frame/business/Business;->getBusiness(Ljava/lang/String;)Lcom/didi/frame/business/Business;

    move-result-object v0

    .line 29
    .local v0, business:Lcom/didi/frame/business/Business;
    #calls: Lcom/didi/common/helper/BusinessHelper;->redirectToBusiness(Lcom/didi/frame/business/Business;)V
    invoke-static {v0}, Lcom/didi/common/helper/BusinessHelper;->access$000(Lcom/didi/frame/business/Business;)V

    .line 33
    .end local v0           #business:Lcom/didi/frame/business/Business;
    .end local v1           #product:Ljava/lang/String;
    :goto_0
    return-void

    .line 31
    :cond_0
    #calls: Lcom/didi/common/helper/BusinessHelper;->toBusinessByCache()V
    invoke-static {}, Lcom/didi/common/helper/BusinessHelper;->access$100()V

    goto :goto_0
.end method
