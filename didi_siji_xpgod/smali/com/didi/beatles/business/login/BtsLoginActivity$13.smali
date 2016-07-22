.class Lcom/didi/beatles/business/login/BtsLoginActivity$13;
.super Ljava/lang/Object;
.source "BtsLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 696
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$13;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 700
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$13;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$13;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCode:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$600(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 701
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$13;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mStart:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1500(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 702
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$13;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #calls: Lcom/didi/beatles/business/login/BtsLoginActivity;->login()V
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$2300(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    .line 703
    return-void
.end method
