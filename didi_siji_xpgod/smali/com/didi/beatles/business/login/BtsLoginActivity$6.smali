.class Lcom/didi/beatles/business/login/BtsLoginActivity$6;
.super Ljava/lang/Object;
.source "BtsLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/login/BtsLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$6;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

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

    .line 479
    if-eqz p2, :cond_0

    .line 480
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$6;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhoneLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1600(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200f7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 481
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$6;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCodeLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1700(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 482
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$6;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$6;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhone:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$900(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->showInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 486
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$6;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhoneLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1600(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
