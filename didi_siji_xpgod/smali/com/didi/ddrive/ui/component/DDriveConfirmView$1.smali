.class Lcom/didi/ddrive/ui/component/DDriveConfirmView$1;
.super Ljava/lang/Object;
.source "DDriveConfirmView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/component/DDriveConfirmView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/component/DDriveConfirmView;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/component/DDriveConfirmView;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveConfirmView$1;->this$0:Lcom/didi/ddrive/ui/component/DDriveConfirmView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveConfirmView$1;->this$0:Lcom/didi/ddrive/ui/component/DDriveConfirmView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveConfirmView;->mListener:Lcom/didi/ddrive/listener/DDriveConfirmListener;
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveConfirmView;->access$000(Lcom/didi/ddrive/ui/component/DDriveConfirmView;)Lcom/didi/ddrive/listener/DDriveConfirmListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveConfirmView$1;->this$0:Lcom/didi/ddrive/ui/component/DDriveConfirmView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveConfirmView;->mListener:Lcom/didi/ddrive/listener/DDriveConfirmListener;
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveConfirmView;->access$000(Lcom/didi/ddrive/ui/component/DDriveConfirmView;)Lcom/didi/ddrive/listener/DDriveConfirmListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/didi/ddrive/listener/DDriveConfirmListener;->onDDriveConfirmClicked(Landroid/view/View;)V

    .line 47
    :cond_0
    return-void
.end method
