.class Lcom/didi/frame/search/SearchSugView$8$1;
.super Lcom/didi/common/net/ResponseListener;
.source "SearchSugView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/search/SearchSugView$8;->onSearch(Ljava/lang/String;)V
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
.field private key:Ljava/lang/String;

.field final synthetic this$1:Lcom/didi/frame/search/SearchSugView$8;

.field final synthetic val$search:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/didi/frame/search/SearchSugView$8;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/didi/frame/search/SearchSugView$8$1;->this$1:Lcom/didi/frame/search/SearchSugView$8;

    iput-object p2, p0, Lcom/didi/frame/search/SearchSugView$8$1;->val$search:Ljava/lang/String;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    .line 553
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$8$1;->val$search:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView$8$1;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 552
    check-cast p1, Lcom/didi/common/model/PoiList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/search/SearchSugView$8$1;->onError(Lcom/didi/common/model/PoiList;)V

    return-void
.end method

.method public onError(Lcom/didi/common/model/PoiList;)V
    .locals 1
    .parameter "poiList"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$8$1;->this$1:Lcom/didi/frame/search/SearchSugView$8;

    iget-object v0, v0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    #calls: Lcom/didi/frame/search/SearchSugView;->onSearchFail(Lcom/didi/common/model/PoiList;)V
    invoke-static {v0, p1}, Lcom/didi/frame/search/SearchSugView;->access$2400(Lcom/didi/frame/search/SearchSugView;Lcom/didi/common/model/PoiList;)V

    .line 569
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 552
    check-cast p1, Lcom/didi/common/model/PoiList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/search/SearchSugView$8$1;->onFail(Lcom/didi/common/model/PoiList;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/model/PoiList;)V
    .locals 1
    .parameter "poiList"

    .prologue
    .line 563
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$8$1;->this$1:Lcom/didi/frame/search/SearchSugView$8;

    iget-object v0, v0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    #calls: Lcom/didi/frame/search/SearchSugView;->onSearchFail(Lcom/didi/common/model/PoiList;)V
    invoke-static {v0, p1}, Lcom/didi/frame/search/SearchSugView;->access$2400(Lcom/didi/frame/search/SearchSugView;Lcom/didi/common/model/PoiList;)V

    .line 564
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 552
    check-cast p1, Lcom/didi/common/model/PoiList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/search/SearchSugView$8$1;->onFinish(Lcom/didi/common/model/PoiList;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/PoiList;)V
    .locals 0
    .parameter "poiList"

    .prologue
    .line 574
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 552
    check-cast p1, Lcom/didi/common/model/PoiList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/search/SearchSugView$8$1;->onSuccess(Lcom/didi/common/model/PoiList;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/PoiList;)V
    .locals 1
    .parameter "poiList"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$8$1;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/didi/common/model/PoiList;->setKeyword(Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$8$1;->this$1:Lcom/didi/frame/search/SearchSugView$8;

    iget-object v0, v0, Lcom/didi/frame/search/SearchSugView$8;->this$0:Lcom/didi/frame/search/SearchSugView;

    #calls: Lcom/didi/frame/search/SearchSugView;->onSearchSuccess(Lcom/didi/common/model/PoiList;)V
    invoke-static {v0, p1}, Lcom/didi/frame/search/SearchSugView;->access$2300(Lcom/didi/frame/search/SearchSugView;Lcom/didi/common/model/PoiList;)V

    .line 559
    return-void
.end method
