.class Lcom/didi/sdk/component/PlatformSdkLoginFragment$12;
.super Ljava/lang/Object;
.source "PlatformSdkLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 673
    iput-object p1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$12;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$12;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mStart:Lx/TextView;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$1600(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lx/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/TextView;->setEnabled(Z)V

    .line 678
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$12;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #calls: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->login()V
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$2400(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    .line 679
    return-void
.end method
