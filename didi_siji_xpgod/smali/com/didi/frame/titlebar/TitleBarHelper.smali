.class public Lcom/didi/frame/titlebar/TitleBarHelper;
.super Ljava/lang/Object;
.source "TitleBarHelper.java"


# static fields
.field private static mTitleBarRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/didi/frame/titlebar/TitleBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTitleBar()Lcom/didi/frame/titlebar/TitleBar;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/didi/frame/titlebar/TitleBarHelper;->mTitleBarRef:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/didi/frame/titlebar/TitleBarHelper;->mTitleBarRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/titlebar/TitleBar;

    goto :goto_0
.end method

.method public static hideTitleBar()V
    .locals 2

    .prologue
    .line 27
    sget-object v1, Lcom/didi/frame/titlebar/TitleBarHelper;->mTitleBarRef:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_1

    .line 33
    .local v0, view:Lcom/didi/frame/titlebar/TitleBar;
    :cond_0
    :goto_0
    return-void

    .line 29
    .end local v0           #view:Lcom/didi/frame/titlebar/TitleBar;
    :cond_1
    sget-object v1, Lcom/didi/frame/titlebar/TitleBarHelper;->mTitleBarRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/titlebar/TitleBar;

    .line 30
    .restart local v0       #view:Lcom/didi/frame/titlebar/TitleBar;
    if-eqz v0, :cond_0

    .line 32
    invoke-static {v0}, Lcom/didi/common/util/ViewUtil;->hide(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static setTitleBar(Lcom/didi/frame/titlebar/TitleBar;)V
    .locals 1
    .parameter "titleBar"

    .prologue
    .line 17
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/didi/frame/titlebar/TitleBarHelper;->mTitleBarRef:Ljava/lang/ref/SoftReference;

    .line 18
    return-void
.end method

.method public static showTitleBar()V
    .locals 2

    .prologue
    .line 36
    sget-object v1, Lcom/didi/frame/titlebar/TitleBarHelper;->mTitleBarRef:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_1

    .line 42
    .local v0, view:Lcom/didi/frame/titlebar/TitleBar;
    :cond_0
    :goto_0
    return-void

    .line 38
    .end local v0           #view:Lcom/didi/frame/titlebar/TitleBar;
    :cond_1
    sget-object v1, Lcom/didi/frame/titlebar/TitleBarHelper;->mTitleBarRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/titlebar/TitleBar;

    .line 39
    .restart local v0       #view:Lcom/didi/frame/titlebar/TitleBar;
    if-eqz v0, :cond_0

    .line 41
    invoke-static {v0}, Lcom/didi/common/util/ViewUtil;->show(Landroid/view/View;)V

    goto :goto_0
.end method
