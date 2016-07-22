.class Lcom/didi/common/ui/fragment/MenuFragment$13;
.super Ljava/lang/Object;
.source "MenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/MenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/MenuFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/MenuFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 717
    iput-object p1, p0, Lcom/didi/common/ui/fragment/MenuFragment$13;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 721
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->getUserInfo()Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v0

    .line 722
    .local v0, userInfo:Lcom/didi/common/ui/userinfo/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/UserInfo;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 723
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/FragmentMgr$UserInfoFrom;->MENU:Lcom/didi/frame/FragmentMgr$UserInfoFrom;

    invoke-virtual {v1, v2}, Lcom/didi/frame/FragmentMgr;->showUserInfoFragment(Lcom/didi/frame/FragmentMgr$UserInfoFrom;)V

    .line 724
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment$13;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #calls: Lcom/didi/common/ui/fragment/MenuFragment;->closeFragmentDelayed()V
    invoke-static {v1}, Lcom/didi/common/ui/fragment/MenuFragment;->access$500(Lcom/didi/common/ui/fragment/MenuFragment;)V

    .line 726
    :cond_0
    return-void
.end method
