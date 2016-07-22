.class final Lcom/didi/common/util/DiDiShareUtil$1;
.super Ljava/lang/Object;
.source "DiDiShareUtil.java"

# interfaces
.implements Lcom/didi/car/helper/CarPayHelper$CarPayHelperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/util/DiDiShareUtil;->isValidCheckWx(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/didi/common/util/DiDiShareUtil$1;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWXAppLowVersionInstalled()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/common/util/DiDiShareUtil$1;->val$ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0475

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public onWXAppSupported(Lcom/didi/car/model/CarPayParams;)V
    .locals 0
    .parameter "payParams"

    .prologue
    .line 44
    return-void
.end method

.method public onWXAppUnInstalled()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "\u672a\u5b89\u88c5\u5fae\u4fe1\uff0c\u65e0\u6cd5\u5206\u4eab"

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(Ljava/lang/String;)V

    .line 40
    return-void
.end method
