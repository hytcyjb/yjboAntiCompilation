.class Lcom/didi/sdk/component/PlatformSdkLoginFragment$2;
.super Ljava/lang/Object;
.source "PlatformSdkLoginFragment.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


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
    .line 176
    iput-object p1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$2;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public submit()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public submitOnly()V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$2;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->showInputMethod:Z
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$600(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$2;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    const/4 v1, 0x0

    #setter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->showInputMethod:Z
    invoke-static {v0, v1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$602(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Z)Z

    .line 181
    new-instance v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$2$1;

    invoke-direct {v0, p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$2$1;-><init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment$2;)V

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    :cond_0
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method
