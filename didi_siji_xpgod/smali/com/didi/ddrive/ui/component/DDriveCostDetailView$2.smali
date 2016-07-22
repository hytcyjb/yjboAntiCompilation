.class Lcom/didi/ddrive/ui/component/DDriveCostDetailView$2;
.super Ljava/lang/Object;
.source "DDriveCostDetailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->getItemClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/component/DDriveCostDetailView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/component/DDriveCostDetailView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView$2;->this$0:Lcom/didi/ddrive/ui/component/DDriveCostDetailView;

    iput-object p2, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView$2;->this$0:Lcom/didi/ddrive/ui/component/DDriveCostDetailView;

    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailView$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/didi/ddrive/ui/component/DDriveCostDetailView;->onPayItemViewClicked(Landroid/view/View;Ljava/lang/String;)V

    .line 265
    return-void
.end method
