.class Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity$2;
.super Ljava/lang/Object;
.source "CommonVirtualMobileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity$2;->this$0:Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 95
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 96
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity$2;->this$0:Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;

    #calls: Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->back()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;->access$000(Lcom/didi/common/ui/fragment/CommonVirtualMobileActivity;)V

    .line 97
    return-void
.end method
