.class public abstract Lcom/didi/common/base/BaseView;
.super Landroid/view/View;
.source "BaseView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0}, Lcom/didi/common/base/BaseView;->initialize()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0}, Lcom/didi/common/base/BaseView;->initialize()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    invoke-direct {p0}, Lcom/didi/common/base/BaseView;->initialize()V

    .line 19
    return-void
.end method

.method private initialize()V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/didi/common/base/BaseView;->resize()V

    .line 33
    invoke-virtual {p0}, Lcom/didi/common/base/BaseView;->onInit()V

    .line 34
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/didi/common/base/BaseView;->setVisibility(I)V

    .line 45
    return-void
.end method

.method public invisible()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/didi/common/base/BaseView;->setVisibility(I)V

    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected onInit()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public resize()V
    .locals 0

    .prologue
    .line 56
    invoke-static {p0}, Lcom/didi/common/util/WindowUtil;->resize(Landroid/view/View;)Z

    .line 57
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/common/base/BaseView;->setVisibility(I)V

    .line 41
    return-void
.end method
