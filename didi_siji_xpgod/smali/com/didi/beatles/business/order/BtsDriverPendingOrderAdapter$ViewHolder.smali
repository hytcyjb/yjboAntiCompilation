.class public Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BtsDriverPendingOrderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public bts_xingcheng_layout:Landroid/view/View;

.field public call_disable_msg:Ljava/lang/String;

.field public day:Landroid/widget/TextView;

.field public desc:Lcom/didi/common/richtextview/RichTextView;

.field public fee:Landroid/widget/TextView;

.field public from:Landroid/widget/TextView;

.field public head:Landroid/widget/ImageView;

.field public hour:Landroid/widget/TextView;

.field public im:Lcom/didi/beatles/ui/component/RedTipTextView;

.field public im_disable_msg:Ljava/lang/String;

.field public isImCanUse:Z

.field public isPhoneCanUse:Z

.field public name:Landroid/widget/TextView;

.field public passenger_msg:Lcom/didi/common/richtextview/RichTextView;

.field public phone:Landroid/widget/ImageView;

.field public profile:Landroid/view/View;

.field public root:Landroid/view/View;

.field public sex:Landroid/widget/ImageView;

.field public submit:Landroid/widget/Button;

.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;

.field public to:Landroid/widget/TextView;

.field public verify:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter$ViewHolder;->this$0:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
