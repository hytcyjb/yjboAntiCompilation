.class Lcom/didi/beatles/business/route/BtsRouteConfigActivity$1;
.super Ljava/lang/Object;
.source "BtsRouteConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/route/BtsRouteConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/route/BtsRouteConfigActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/route/BtsRouteConfigActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity$1;->this$0:Lcom/didi/beatles/business/route/BtsRouteConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/16 v2, 0x8

    .line 114
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity$1;->this$0:Lcom/didi/beatles/business/route/BtsRouteConfigActivity;

    #getter for: Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mAddRouteLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->access$000(Lcom/didi/beatles/business/route/BtsRouteConfigActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity$1;->this$0:Lcom/didi/beatles/business/route/BtsRouteConfigActivity;

    #getter for: Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mLoadingLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->access$100(Lcom/didi/beatles/business/route/BtsRouteConfigActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity$1;->this$0:Lcom/didi/beatles/business/route/BtsRouteConfigActivity;

    #getter for: Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->net_error_layout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->access$200(Lcom/didi/beatles/business/route/BtsRouteConfigActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity$1;->this$0:Lcom/didi/beatles/business/route/BtsRouteConfigActivity;

    const/4 v1, 0x2

    #calls: Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->getResponseListener(I)Lcom/didi/beatles/net/BtsResponseListener;
    invoke-static {v0, v1}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->access$300(Lcom/didi/beatles/business/route/BtsRouteConfigActivity;I)Lcom/didi/beatles/net/BtsResponseListener;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/beatles/net/BtsRequest;->getDriverRouteList(Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 122
    :cond_0
    return-void
.end method
