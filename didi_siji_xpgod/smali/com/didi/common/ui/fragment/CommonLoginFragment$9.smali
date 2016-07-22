.class Lcom/didi/common/ui/fragment/CommonLoginFragment$9;
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
    .line 557
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$9;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 561
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 563
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$9;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonLoginFragment;->backToPrePage()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$2200(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    .line 565
    :cond_0
    return-void
.end method
