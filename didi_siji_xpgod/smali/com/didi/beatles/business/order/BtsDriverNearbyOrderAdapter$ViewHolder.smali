.class public Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BtsDriverNearbyOrderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public bts_xingcheng_layout:Landroid/view/View;

.field public day:Landroid/widget/TextView;

.field public desc:Landroid/widget/TextView;

.field public fee:Landroid/widget/TextView;

.field public from:Landroid/widget/TextView;

.field public head:Landroid/widget/ImageView;

.field public hour:Landroid/widget/TextView;

.field public im:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field public passenger_msg:Landroid/widget/TextView;

.field public phone:Landroid/widget/ImageView;

.field public profile:Landroid/view/View;

.field public root:Landroid/view/View;

.field public sex:Landroid/widget/ImageView;

.field public submit:Landroid/widget/Button;

.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;

.field public to:Landroid/widget/TextView;

.field public verify:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter$ViewHolder;->this$0:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
