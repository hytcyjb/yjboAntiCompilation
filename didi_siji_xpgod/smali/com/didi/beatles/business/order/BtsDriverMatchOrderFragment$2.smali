.class Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$2;
.super Ljava/lang/Object;
.source "BtsDriverMatchOrderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$2;->this$0:Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 155
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$2;->this$0:Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;

    invoke-virtual {v0}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$2;->this$0:Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;

    invoke-virtual {v0}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->startActivity(Landroid/app/Activity;)V

    .line 160
    :cond_0
    return-void
.end method
