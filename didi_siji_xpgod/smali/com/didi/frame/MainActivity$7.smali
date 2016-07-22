.class Lcom/didi/frame/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/MainActivity;->redirectToConfirmFragment(Lcom/didi/common/model/ExternalData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/MainActivity;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/didi/frame/MainActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/didi/frame/MainActivity$7;->this$0:Lcom/didi/frame/MainActivity;

    iput-object p2, p0, Lcom/didi/frame/MainActivity$7;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/didi/frame/MainActivity$7;->this$0:Lcom/didi/frame/MainActivity;

    iget-object v1, p0, Lcom/didi/frame/MainActivity$7;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/didi/frame/MainActivity;->notifyCarAvailabelChange(Landroid/os/Bundle;)V

    .line 561
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 562
    return-void
.end method
