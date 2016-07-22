.class Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$2;
.super Ljava/lang/Object;
.source "DDriveCostDetailControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$2;->this$0:Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView$2;->this$0:Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;

    invoke-virtual {v0, p1}, Lcom/didi/ddrive/ui/component/DDriveCostDetailControllerView;->onTitleRightClicked(Landroid/view/View;)V

    .line 165
    return-void
.end method
