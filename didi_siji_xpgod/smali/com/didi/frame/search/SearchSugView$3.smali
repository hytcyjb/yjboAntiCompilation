.class Lcom/didi/frame/search/SearchSugView$3;
.super Lcom/didi/common/net/ResponseListener;
.source "SearchSugView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/search/SearchSugView;->preShowRecommend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/PoiList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/search/SearchSugView;


# direct methods
.method constructor <init>(Lcom/didi/frame/search/SearchSugView;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/didi/frame/search/SearchSugView$3;->this$0:Lcom/didi/frame/search/SearchSugView;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 384
    check-cast p1, Lcom/didi/common/model/PoiList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/search/SearchSugView$3;->onFinish(Lcom/didi/common/model/PoiList;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/PoiList;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 393
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 394
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 395
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 384
    check-cast p1, Lcom/didi/common/model/PoiList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/search/SearchSugView$3;->onSuccess(Lcom/didi/common/model/PoiList;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/PoiList;)V
    .locals 1
    .parameter "poiList"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$3;->this$0:Lcom/didi/frame/search/SearchSugView;

    #calls: Lcom/didi/frame/search/SearchSugView;->onRecommend(Lcom/didi/common/model/PoiList;)V
    invoke-static {v0, p1}, Lcom/didi/frame/search/SearchSugView;->access$300(Lcom/didi/frame/search/SearchSugView;Lcom/didi/common/model/PoiList;)V

    .line 389
    return-void
.end method
