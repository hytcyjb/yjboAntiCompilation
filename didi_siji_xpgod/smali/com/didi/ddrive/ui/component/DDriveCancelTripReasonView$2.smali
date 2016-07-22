.class Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView$2;
.super Ljava/lang/Object;
.source "DDriveCancelTripReasonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView$2;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView$2;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;

    #getter for: Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->listener:Lcom/didi/ddrive/ui/component/DDriveCancelTripView$ReasonItemListener;
    invoke-static {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;->access$100(Lcom/didi/ddrive/ui/component/DDriveCancelTripReasonView;)Lcom/didi/ddrive/ui/component/DDriveCancelTripView$ReasonItemListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$ReasonItemListener;->onSelect()V

    .line 114
    return-void
.end method
