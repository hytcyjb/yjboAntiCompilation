.class final Lcom/didi/common/helper/VoucherHelper$1;
.super Lcom/didi/common/net/ResponseListener;
.source "VoucherHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/VoucherHelper;->getVoucherRedPointSupportFromServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/VoucherRedPointData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, Lcom/didi/common/model/VoucherRedPointData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/helper/VoucherHelper$1;->onSuccess(Lcom/didi/common/model/VoucherRedPointData;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/VoucherRedPointData;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 32
    iget v1, p1, Lcom/didi/common/model/VoucherRedPointData;->isRed:I

    invoke-static {v1}, Lcom/didi/common/helper/VoucherHelper;->setVoucherRedPointToNative(I)V

    .line 33
    const/4 v1, 0x1

    iget v2, p1, Lcom/didi/common/model/VoucherRedPointData;->isRed:I

    if-ne v1, v2, :cond_0

    .line 34
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    .line 35
    .local v0, titleBar:Lcom/didi/frame/titlebar/TitleBar;
    const v1, 0x7f020171

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawableVisibility(II)V

    .line 37
    .end local v0           #titleBar:Lcom/didi/frame/titlebar/TitleBar;
    :cond_0
    return-void
.end method
