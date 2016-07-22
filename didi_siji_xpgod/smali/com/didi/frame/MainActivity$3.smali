.class Lcom/didi/frame/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/didi/common/ui/slidingmenu/DDDrawerLayout$DDDrawerLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/MainActivity;->initMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/MainActivity;


# direct methods
.method constructor <init>(Lcom/didi/frame/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/didi/frame/MainActivity$3;->this$0:Lcom/didi/frame/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 282
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    .line 283
    .local v0, currentFragment:Lcom/didi/common/ui/fragment/SlideFragment;
    instance-of v1, v0, Lcom/didi/common/ui/fragment/SetupFragment;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;

    if-eqz v1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/didi/frame/MainActivity$3;->this$0:Lcom/didi/frame/MainActivity;

    invoke-virtual {v1}, Lcom/didi/frame/MainActivity;->setUserLogo()V

    goto :goto_0
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 278
    return-void
.end method
