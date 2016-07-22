.class Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$3;
.super Ljava/lang/Object;
.source "BtsDriverOrderManagerActivity.java"

# interfaces
.implements Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$TabFastDoubleClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$3;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFastDoubleClick(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$3;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mFragments:[Lcom/didi/beatles/business/order/BtsBaseFragment;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->access$300(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)[Lcom/didi/beatles/business/order/BtsBaseFragment;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$3;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mFragments:[Lcom/didi/beatles/business/order/BtsBaseFragment;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->access$300(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)[Lcom/didi/beatles/business/order/BtsBaseFragment;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$3;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    #getter for: Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mFragments:[Lcom/didi/beatles/business/order/BtsBaseFragment;
    invoke-static {v0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->access$300(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)[Lcom/didi/beatles/business/order/BtsBaseFragment;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/didi/beatles/business/order/BtsBaseFragment;->onAutoRefresh()V

    .line 225
    :cond_0
    return-void
.end method
