.class Lcom/didi/beatles/business/login/BtsLoginActivity$2;
.super Ljava/lang/Object;
.source "BtsLoginActivity.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


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
    .line 203
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$2;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public submit()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public submitOnly()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$2;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->showInputMethod:Z
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$500(Lcom/didi/beatles/business/login/BtsLoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$2;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    const/4 v1, 0x0

    #setter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->showInputMethod:Z
    invoke-static {v0, v1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$502(Lcom/didi/beatles/business/login/BtsLoginActivity;Z)Z

    .line 208
    new-instance v0, Lcom/didi/beatles/business/login/BtsLoginActivity$2$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsLoginActivity$2$1;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity$2;)V

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 217
    :cond_0
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method
