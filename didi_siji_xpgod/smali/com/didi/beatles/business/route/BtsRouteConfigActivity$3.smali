.class Lcom/didi/beatles/business/route/BtsRouteConfigActivity$3;
.super Ljava/lang/Object;
.source "BtsRouteConfigActivity.java"

# interfaces
.implements Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;


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
    .line 136
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity$3;->this$0:Lcom/didi/beatles/business/route/BtsRouteConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity$3;->this$0:Lcom/didi/beatles/business/route/BtsRouteConfigActivity;

    const/4 v1, 0x4

    #calls: Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->getResponseListener(I)Lcom/didi/beatles/net/BtsResponseListener;
    invoke-static {v0, v1}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->access$300(Lcom/didi/beatles/business/route/BtsRouteConfigActivity;I)Lcom/didi/beatles/net/BtsResponseListener;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/beatles/net/BtsRequest;->getDriverRouteList(Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 141
    return-void
.end method
