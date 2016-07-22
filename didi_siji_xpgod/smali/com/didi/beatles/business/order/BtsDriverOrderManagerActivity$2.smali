.class Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$2;
.super Ljava/lang/Object;
.source "BtsDriverOrderManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 142
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$2;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 146
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$2;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->finish()V

    .line 149
    :cond_0
    return-void
.end method
