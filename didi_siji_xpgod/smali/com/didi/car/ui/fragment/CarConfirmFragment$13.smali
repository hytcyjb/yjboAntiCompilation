.class Lcom/didi/car/ui/fragment/CarConfirmFragment$13;
.super Ljava/lang/Object;
.source "CarConfirmFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarConfirmFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 741
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$13;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 766
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 762
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 758
    return-void
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$13;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    invoke-virtual {v0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/Utils;->weixinPayCheck(Landroid/content/Context;)V

    .line 754
    return-void
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 749
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 745
    return-void
.end method
