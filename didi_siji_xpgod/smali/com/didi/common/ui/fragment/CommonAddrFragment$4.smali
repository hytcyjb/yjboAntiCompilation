.class Lcom/didi/common/ui/fragment/CommonAddrFragment$4;
.super Ljava/lang/Object;
.source "CommonAddrFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonAddrFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonAddrFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonAddrFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonAddrFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 282
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0802db

    if-ne v0, v1, :cond_1

    .line 284
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonAddrFragment;

    #setter for: Lcom/didi/common/ui/fragment/CommonAddrFragment;->mSetHome:Z
    invoke-static {v0, v3}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->access$302(Lcom/didi/common/ui/fragment/CommonAddrFragment;Z)Z

    .line 285
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonAddrFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonAddrFragment;->redirectToSearch(Z)V
    invoke-static {v0, v3}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->access$400(Lcom/didi/common/ui/fragment/CommonAddrFragment;Z)V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0802e1

    if-ne v0, v1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonAddrFragment;

    #setter for: Lcom/didi/common/ui/fragment/CommonAddrFragment;->mSetHome:Z
    invoke-static {v0, v2}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->access$302(Lcom/didi/common/ui/fragment/CommonAddrFragment;Z)Z

    .line 288
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment$4;->this$0:Lcom/didi/common/ui/fragment/CommonAddrFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonAddrFragment;->redirectToSearch(Z)V
    invoke-static {v0, v2}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->access$400(Lcom/didi/common/ui/fragment/CommonAddrFragment;Z)V

    goto :goto_0
.end method
