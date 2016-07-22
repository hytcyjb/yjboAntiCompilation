.class Lcom/didi/common/ui/fragment/CommonLoginFragment$10;
.super Ljava/lang/Object;
.source "CommonLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$10;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 572
    sget-boolean v0, Lcom/didi/common/util/Constant;->isPreRom:Z

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$10;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonLoginFragment;->showSMSDialog()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$2300(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    .line 578
    :goto_0
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 579
    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$10;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonLoginFragment;->getSms()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$2400(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    goto :goto_0
.end method
