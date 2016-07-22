.class Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox$1;
.super Ljava/lang/Object;
.source "BtsFreeDeliverCheckBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox$1;->this$0:Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox$1;->this$0:Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;

    #calls: Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;->switchFreeOrNot()V
    invoke-static {v0}, Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;->access$000(Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;)V

    .line 75
    return-void
.end method
