.class Lcom/didi/sdk/component/PlatformSdkLoginFragment$6;
.super Ljava/lang/Object;
.source "PlatformSdkLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/sdk/component/PlatformSdkLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;


# direct methods
.method constructor <init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$6;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

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

    .line 467
    if-eqz p2, :cond_0

    .line 468
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$6;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhoneLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$1700(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200f7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 469
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$6;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mCodeLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$1800(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 470
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$6;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    invoke-virtual {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$6;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhone:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$1000(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->showInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 474
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$6;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhoneLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$1700(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
