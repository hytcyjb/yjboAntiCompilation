.class public Lcom/didi/common/base/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resizeView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 42
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 43
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .parameter "layoutResID"

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/didi/common/base/BaseDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 26
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/didi/common/base/BaseDialog;->setContentView(Landroid/view/View;)V

    .line 27
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/didi/common/base/BaseDialog;->resizeView(Landroid/view/View;)V

    .line 32
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 33
    invoke-static {p0, p1}, Lnet/tsz/afinal/FinalActivity;->initInjectedView(Ljava/lang/Object;Landroid/view/View;)V

    .line 34
    return-void
.end method
