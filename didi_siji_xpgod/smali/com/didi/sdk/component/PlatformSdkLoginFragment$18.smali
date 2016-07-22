.class Lcom/didi/sdk/component/PlatformSdkLoginFragment$18;
.super Ljava/lang/Object;
.source "PlatformSdkLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/sdk/component/PlatformSdkLoginFragment;->onLogin(Lcom/didi/common/model/CommonToken;)V
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
    .line 890
    iput-object p1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$18;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$18;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isBack:Z
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$3300(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$18;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #calls: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->updateAddr()V
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$3400(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    .line 897
    :cond_0
    return-void
.end method
