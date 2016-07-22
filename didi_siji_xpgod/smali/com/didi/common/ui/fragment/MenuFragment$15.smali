.class Lcom/didi/common/ui/fragment/MenuFragment$15;
.super Ljava/lang/Object;
.source "MenuFragment.java"

# interfaces
.implements Lcom/didi/common/ui/userinfo/UserInfoHelper$UserInfoListener;


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
    .line 760
    iput-object p1, p0, Lcom/didi/common/ui/fragment/MenuFragment$15;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetInfo()V
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment$15;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #calls: Lcom/didi/common/ui/fragment/MenuFragment;->initUserView()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/MenuFragment;->access$1300(Lcom/didi/common/ui/fragment/MenuFragment;)V

    .line 770
    return-void
.end method

.method public onUserInfoChanged()V
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment$15;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #calls: Lcom/didi/common/ui/fragment/MenuFragment;->initUserView()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/MenuFragment;->access$1300(Lcom/didi/common/ui/fragment/MenuFragment;)V

    .line 765
    return-void
.end method
