.class Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$1;
.super Ljava/lang/Object;
.source "DDriverWaitForArrivalControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitleRight(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$1;->this$0:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$1;->this$0:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-virtual {v0, p1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->onTitleRightClicked(Landroid/view/View;)V

    .line 151
    return-void
.end method
