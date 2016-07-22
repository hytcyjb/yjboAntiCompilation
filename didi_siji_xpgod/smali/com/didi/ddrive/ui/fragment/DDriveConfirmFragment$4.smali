.class Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$4;
.super Ljava/lang/Object;
.source "DDriveConfirmFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->setTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$4;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$4;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;

    #calls: Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->back()V
    invoke-static {v0}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->access$500(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;)V

    .line 199
    return-void
.end method
