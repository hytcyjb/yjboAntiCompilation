.class Lcom/didi/sdk/activity/PlatfromSdkLoginActivity$1;
.super Ljava/lang/Object;
.source "PlatfromSdkLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;->setTitlebar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;


# direct methods
.method constructor <init>(Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/didi/sdk/activity/PlatfromSdkLoginActivity$1;->this$0:Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 67
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/didi/sdk/activity/PlatfromSdkLoginActivity$1;->this$0:Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;

    invoke-virtual {v0}, Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;->onBackPressed()V

    .line 70
    :cond_0
    return-void
.end method
