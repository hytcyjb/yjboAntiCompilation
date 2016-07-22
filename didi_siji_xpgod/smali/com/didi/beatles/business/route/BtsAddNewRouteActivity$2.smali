.class Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$2;
.super Ljava/lang/Object;
.source "BtsAddNewRouteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$2;->this$0:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 201
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$2;->this$0:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;

    const/4 v1, 0x0

    #calls: Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->redirectToSearch(Z)V
    invoke-static {v0, v1}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->access$000(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;Z)V

    .line 204
    :cond_0
    return-void
.end method
