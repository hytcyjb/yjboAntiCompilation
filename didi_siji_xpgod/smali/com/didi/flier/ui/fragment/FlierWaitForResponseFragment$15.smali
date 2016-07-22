.class Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$15;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "FlierWaitForResponseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$15;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 645
    return-void
.end method

.method public submitOnly()V
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$15;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->redictRealtimeFragment()V
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->access$2100(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    .line 641
    return-void
.end method
