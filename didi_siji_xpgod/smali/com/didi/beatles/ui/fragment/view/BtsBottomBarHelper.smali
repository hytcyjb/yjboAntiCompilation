.class public Lcom/didi/beatles/ui/fragment/view/BtsBottomBarHelper;
.super Ljava/lang/Object;
.source "BtsBottomBarHelper.java"


# static fields
.field private static bar:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeRole(I)V
    .locals 1
    .parameter "role"

    .prologue
    .line 19
    sget-object v0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBarHelper;->bar:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBarHelper;->bar:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;

    invoke-virtual {v0, p0}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->changeRole(I)V

    .line 21
    :cond_0
    return-void
.end method

.method public static refreshTab()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBarHelper;->bar:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBarHelper;->bar:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->refreshTab()V

    .line 26
    :cond_0
    return-void
.end method

.method public static setBtsBottomBar(Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 10
    sput-object p0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBarHelper;->bar:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;

    .line 11
    return-void
.end method

.method public static setUiListener(Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$UiListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 14
    sget-object v0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBarHelper;->bar:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;

    if-eqz v0, :cond_0

    .line 15
    sget-object v0, Lcom/didi/beatles/ui/fragment/view/BtsBottomBarHelper;->bar:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;

    invoke-virtual {v0, p0}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;->setUiListener(Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$UiListener;)V

    .line 16
    :cond_0
    return-void
.end method
