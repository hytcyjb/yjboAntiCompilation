.class Lcom/didi/beatles/business/route/BtsRouteConfigActivity$6;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsRouteConfigActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->getResponseListener(I)Lcom/didi/beatles/net/BtsResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/route/BtsRouteList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/route/BtsRouteConfigActivity;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/route/BtsRouteConfigActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity$6;->this$0:Lcom/didi/beatles/business/route/BtsRouteConfigActivity;

    iput p2, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity$6;->val$type:I

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 238
    check-cast p1, Lcom/didi/beatles/model/route/BtsRouteList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity$6;->onFinish(Lcom/didi/beatles/model/route/BtsRouteList;)V

    return-void
.end method

.method public onFinish(Lcom/didi/beatles/model/route/BtsRouteList;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity$6;->this$0:Lcom/didi/beatles/business/route/BtsRouteConfigActivity;

    iget v1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity$6;->val$type:I

    #calls: Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->resultSetProcess(Lcom/didi/beatles/model/route/BtsRouteList;I)V
    invoke-static {v0, p1, v1}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->access$400(Lcom/didi/beatles/business/route/BtsRouteConfigActivity;Lcom/didi/beatles/model/route/BtsRouteList;I)V

    .line 243
    return-void
.end method
