.class Lcom/didi/beatles/business/order/BtsDriverTaskFragment$2;
.super Ljava/lang/Object;
.source "BtsDriverTaskFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/order/BtsDriverTaskFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverTaskFragment;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment$2;->this$0:Lcom/didi/beatles/business/order/BtsDriverTaskFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 195
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment$2;->this$0:Lcom/didi/beatles/business/order/BtsDriverTaskFragment;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->mNetErrorLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->access$100(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverTaskFragment$2;->this$0:Lcom/didi/beatles/business/order/BtsDriverTaskFragment;

    #calls: Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->refresh()V
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverTaskFragment;->access$200(Lcom/didi/beatles/business/order/BtsDriverTaskFragment;)V

    .line 201
    :cond_0
    return-void
.end method
