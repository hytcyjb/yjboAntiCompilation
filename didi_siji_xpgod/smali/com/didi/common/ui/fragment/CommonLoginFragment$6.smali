.class Lcom/didi/common/ui/fragment/CommonLoginFragment$6;
.super Ljava/lang/Object;
.source "CommonLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 482
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$6;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const v2, 0x7f0200f6

    .line 486
    if-eqz p2, :cond_0

    .line 487
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$6;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhoneLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1700(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200f7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 488
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$6;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCodeLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1800(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 489
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$6;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-virtual {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$6;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhone:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1000(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->showInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 493
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$6;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhoneLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1700(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
