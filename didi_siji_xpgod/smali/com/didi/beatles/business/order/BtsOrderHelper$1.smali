.class final Lcom/didi/beatles/business/order/BtsOrderHelper$1;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "BtsOrderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/order/BtsOrderHelper;->showDriverAuthDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsOrderHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->cancel()V

    .line 30
    return-void
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->submit()V

    .line 23
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsOrderHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/didi/beatles/upload/BtsPicUploadWebActivity;->startActivity(Landroid/content/Context;)V

    .line 24
    return-void
.end method
