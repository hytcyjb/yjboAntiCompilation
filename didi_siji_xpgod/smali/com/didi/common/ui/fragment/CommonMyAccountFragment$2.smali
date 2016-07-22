.class Lcom/didi/common/ui/fragment/CommonMyAccountFragment$2;
.super Ljava/lang/Object;
.source "CommonMyAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonMyAccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonMyAccountFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonMyAccountFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonMyAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 116
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 117
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment$2;->this$0:Lcom/didi/common/ui/fragment/CommonMyAccountFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->back()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;->access$300(Lcom/didi/common/ui/fragment/CommonMyAccountFragment;)V

    .line 118
    return-void
.end method
