.class Lcom/didi/common/ui/fragment/ShareFragment$6;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/Share$ShareFriends;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/ShareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/ShareFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/ShareFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/didi/common/ui/fragment/ShareFragment$6;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindSinaFailed()V
    .locals 0

    .prologue
    .line 402
    return-void
.end method

.method public bindTencentFailed()V
    .locals 0

    .prologue
    .line 398
    return-void
.end method

.method public getSinaFriends()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment$6;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #calls: Lcom/didi/common/ui/fragment/ShareFragment;->getSinaWeiboFriends()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/ShareFragment;->access$700(Lcom/didi/common/ui/fragment/ShareFragment;)V

    .line 386
    return-void
.end method

.method public getTencentFriends()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment$6;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #calls: Lcom/didi/common/ui/fragment/ShareFragment;->getTencentWeiboFriends()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/ShareFragment;->access$1400(Lcom/didi/common/ui/fragment/ShareFragment;)V

    .line 381
    return-void
.end method

.method public shareSina()V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public shareTencent()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public unBindSinaFailed()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method public unBindSinaSucc()V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method public unBindTencentFailed()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public unBindTencentSucc()V
    .locals 0

    .prologue
    .line 364
    return-void
.end method
