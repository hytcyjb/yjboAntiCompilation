.class final Lcom/didi/beatles/helper/BtsPermissionUtils$1;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "BtsPermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/helper/BtsPermissionUtils;->showAlert(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->cancel()V

    .line 75
    return-void
.end method

.method public submit()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->submit()V

    .line 69
    return-void
.end method
