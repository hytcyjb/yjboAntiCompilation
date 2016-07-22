.class Lcom/didi/ddrive/ui/component/DDriveCancelTripView$3;
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
    .line 272
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$3;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView$3;->this$0:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;->hideInputMethod()V

    .line 277
    return-void
.end method
