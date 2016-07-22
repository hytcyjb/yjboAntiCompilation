.class Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$5;
.super Ljava/lang/Object;
.source "DDriveWaitForResponseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$5;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$5;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    #calls: Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->showCancelDialog()V
    invoke-static {v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$1400(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)V

    .line 371
    return-void
.end method
