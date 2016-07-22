.class Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$1;
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
    .line 131
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$1;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 135
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const-string v0, "pbdxpathset01_sw"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$1;->this$0:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    invoke-static {v0}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->startActivity(Landroid/app/Activity;)V

    .line 139
    :cond_0
    return-void
.end method
