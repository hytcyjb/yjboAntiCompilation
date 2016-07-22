.class Lcom/didi/common/ui/fragment/CommonLoginFragment$2;
.super Ljava/lang/Object;
.source "CommonLoginFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


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
    .line 190
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public submit()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public submitOnly()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->showInputMethod:Z
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$600(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    const/4 v1, 0x0

    #setter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->showInputMethod:Z
    invoke-static {v0, v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$602(Lcom/didi/common/ui/fragment/CommonLoginFragment;Z)Z

    .line 195
    new-instance v0, Lcom/didi/common/ui/fragment/CommonLoginFragment$2$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$2$1;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment$2;)V

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    :cond_0
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method
