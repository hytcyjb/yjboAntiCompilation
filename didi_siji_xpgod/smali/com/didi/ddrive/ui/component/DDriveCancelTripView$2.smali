.class Lcom/didi/ddrive/ui/component/DDriveCancelTripView$2;
.super Ljava/lang/Object;
.source "DDriveCancelTripView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/component/DDriveCancelTripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$2;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$2;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->cancelListener:Lcom/didi/ddrive/ui/component/DDriveCancelTripView$CancelTripListener;
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->access$500(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)Lcom/didi/ddrive/ui/component/DDriveCancelTripView$CancelTripListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$CancelTripListener;->onConfirm()V

    .line 269
    return-void
.end method
