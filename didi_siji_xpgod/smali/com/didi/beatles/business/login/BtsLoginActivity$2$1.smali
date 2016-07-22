.class Lcom/didi/beatles/business/login/BtsLoginActivity$2$1;
.super Ljava/lang/Object;
.source "BtsLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/login/BtsLoginActivity$2;->submitOnly()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/beatles/business/login/BtsLoginActivity$2;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/login/BtsLoginActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$2$1;->this$1:Lcom/didi/beatles/business/login/BtsLoginActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$2$1;->this$1:Lcom/didi/beatles/business/login/BtsLoginActivity$2;

    iget-object v0, v0, Lcom/didi/beatles/business/login/BtsLoginActivity$2;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCode:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$600(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$2$1;->this$1:Lcom/didi/beatles/business/login/BtsLoginActivity$2;

    iget-object v0, v0, Lcom/didi/beatles/business/login/BtsLoginActivity$2;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCode:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$600(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 213
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$2$1;->this$1:Lcom/didi/beatles/business/login/BtsLoginActivity$2;

    iget-object v1, v1, Lcom/didi/beatles/business/login/BtsLoginActivity$2;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCode:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$600(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->showInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 214
    return-void
.end method
