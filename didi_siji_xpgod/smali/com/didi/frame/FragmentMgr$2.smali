.class Lcom/didi/frame/FragmentMgr$2;
.super Ljava/lang/Object;
.source "FragmentMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/FragmentMgr;->backToFragment(ILjava/lang/Class;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/FragmentMgr;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$fragmentClass:Ljava/lang/Class;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/didi/frame/FragmentMgr;ILjava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/didi/frame/FragmentMgr$2;->this$0:Lcom/didi/frame/FragmentMgr;

    iput p2, p0, Lcom/didi/frame/FragmentMgr$2;->val$id:I

    iput-object p3, p0, Lcom/didi/frame/FragmentMgr$2;->val$fragmentClass:Ljava/lang/Class;

    iput-object p4, p0, Lcom/didi/frame/FragmentMgr$2;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 403
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr$2;->this$0:Lcom/didi/frame/FragmentMgr;

    iget v1, p0, Lcom/didi/frame/FragmentMgr$2;->val$id:I

    iget-object v2, p0, Lcom/didi/frame/FragmentMgr$2;->val$fragmentClass:Ljava/lang/Class;

    iget-object v3, p0, Lcom/didi/frame/FragmentMgr$2;->val$args:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/didi/frame/FragmentMgr$2;->this$0:Lcom/didi/frame/FragmentMgr;

    #getter for: Lcom/didi/frame/FragmentMgr;->fragmentSlideAnimArrayBackward:[I
    invoke-static {v4}, Lcom/didi/frame/FragmentMgr;->access$100(Lcom/didi/frame/FragmentMgr;)[I

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/didi/frame/FragmentMgr;->showFragment(ILjava/lang/Class;Landroid/os/Bundle;[I)Landroid/support/v4/app/Fragment;

    .line 404
    return-void
.end method
