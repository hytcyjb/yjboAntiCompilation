.class Lcom/didi/flier/ui/fragment/FlierConfirmFragment$13;
.super Ljava/lang/Object;
.source "FlierConfirmFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/flier/ui/fragment/FlierConfirmFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 740
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$13;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 765
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 761
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 757
    return-void
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$13;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    invoke-virtual {v0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/Utils;->weixinPayCheck(Landroid/content/Context;)V

    .line 753
    return-void
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 748
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 744
    return-void
.end method
