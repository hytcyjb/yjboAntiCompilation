.class Lcom/didi/beatles/business/login/BtsLoginActivity$7;
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
    .line 489
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$7;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

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

    .line 493
    if-eqz p2, :cond_0

    .line 494
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$7;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCodeLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1700(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200f7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 495
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$7;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhoneLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1600(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 496
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$7;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$7;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCode:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$600(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->showInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 500
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$7;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCodeLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1700(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
