.class Lcom/didi/common/ui/fragment/ShareFragment$7$4;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/ShareFragment$7;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/common/ui/fragment/ShareFragment$7;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/ShareFragment$7;)V
    .locals 0
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/didi/common/ui/fragment/ShareFragment$7$4;->this$1:Lcom/didi/common/ui/fragment/ShareFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment$7$4;->this$1:Lcom/didi/common/ui/fragment/ShareFragment$7;

    iget-object v0, v0, Lcom/didi/common/ui/fragment/ShareFragment$7;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #calls: Lcom/didi/common/ui/fragment/ShareFragment;->getSinaWeiboFriends()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/ShareFragment;->access$700(Lcom/didi/common/ui/fragment/ShareFragment;)V

    .line 501
    return-void
.end method
