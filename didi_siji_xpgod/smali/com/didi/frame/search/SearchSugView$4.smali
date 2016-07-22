.class Lcom/didi/frame/search/SearchSugView$4;
.super Lcom/didi/common/net/ResponseListener;
.source "SearchSugView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/search/SearchSugView;->getPoiSug(Ljava/lang/String;Ljava/lang/String;)V
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
.field private cou:I

.field private keyword:Ljava/lang/String;

.field final synthetic this$0:Lcom/didi/frame/search/SearchSugView;

.field final synthetic val$sug:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/didi/frame/search/SearchSugView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/didi/frame/search/SearchSugView$4;->this$0:Lcom/didi/frame/search/SearchSugView;

    iput-object p2, p0, Lcom/didi/frame/search/SearchSugView$4;->val$sug:Ljava/lang/String;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    .line 405
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$4;->val$sug:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView$4;->keyword:Ljava/lang/String;

    .line 406
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$4;->this$0:Lcom/didi/frame/search/SearchSugView;

    #getter for: Lcom/didi/frame/search/SearchSugView;->count:I
    invoke-static {v0}, Lcom/didi/frame/search/SearchSugView;->access$400(Lcom/didi/frame/search/SearchSugView;)I

    move-result v0

    iput v0, p0, Lcom/didi/frame/search/SearchSugView$4;->cou:I

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 404
    check-cast p1, Lcom/didi/common/model/PoiList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/search/SearchSugView$4;->onError(Lcom/didi/common/model/PoiList;)V

    return-void
.end method

.method public onError(Lcom/didi/common/model/PoiList;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$4;->this$0:Lcom/didi/frame/search/SearchSugView;

    iget-object v1, p1, Lcom/didi/common/model/PoiList;->errmsg:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/frame/search/SearchSugView$4;->keyword:Ljava/lang/String;

    iget v3, p0, Lcom/didi/frame/search/SearchSugView$4;->cou:I

    #calls: Lcom/didi/frame/search/SearchSugView;->onPoiSugFail(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/didi/frame/search/SearchSugView;->access$800(Lcom/didi/frame/search/SearchSugView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 420
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 404
    check-cast p1, Lcom/didi/common/model/PoiList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/search/SearchSugView$4;->onFail(Lcom/didi/common/model/PoiList;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/model/PoiList;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$4;->this$0:Lcom/didi/frame/search/SearchSugView;

    iget-object v1, p1, Lcom/didi/common/model/PoiList;->errmsg:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/frame/search/SearchSugView$4;->keyword:Ljava/lang/String;

    iget v3, p0, Lcom/didi/frame/search/SearchSugView$4;->cou:I

    #calls: Lcom/didi/frame/search/SearchSugView;->onPoiSugFail(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/didi/frame/search/SearchSugView;->access$800(Lcom/didi/frame/search/SearchSugView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 416
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 404
    check-cast p1, Lcom/didi/common/model/PoiList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/search/SearchSugView$4;->onFinish(Lcom/didi/common/model/PoiList;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/PoiList;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 424
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 425
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$4;->this$0:Lcom/didi/frame/search/SearchSugView;

    #getter for: Lcom/didi/frame/search/SearchSugView;->count:I
    invoke-static {v0}, Lcom/didi/frame/search/SearchSugView;->access$400(Lcom/didi/frame/search/SearchSugView;)I

    move-result v0

    iget v1, p0, Lcom/didi/frame/search/SearchSugView$4;->cou:I

    if-ne v0, v1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$4;->this$0:Lcom/didi/frame/search/SearchSugView;

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView$4;->this$0:Lcom/didi/frame/search/SearchSugView;

    #getter for: Lcom/didi/frame/search/SearchSugView;->loading:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/didi/frame/search/SearchSugView;->access$900(Lcom/didi/frame/search/SearchSugView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    #calls: Lcom/didi/frame/search/SearchSugView;->hideView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/frame/search/SearchSugView;->access$600(Lcom/didi/frame/search/SearchSugView;Landroid/view/View;)V

    .line 427
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$4;->this$0:Lcom/didi/frame/search/SearchSugView;

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView$4;->this$0:Lcom/didi/frame/search/SearchSugView;

    #getter for: Lcom/didi/frame/search/SearchSugView;->sugListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/didi/frame/search/SearchSugView;->access$1000(Lcom/didi/frame/search/SearchSugView;)Landroid/widget/ListView;

    move-result-object v1

    #calls: Lcom/didi/frame/search/SearchSugView;->showView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/frame/search/SearchSugView;->access$1100(Lcom/didi/frame/search/SearchSugView;Landroid/view/View;)V

    .line 429
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 404
    check-cast p1, Lcom/didi/common/model/PoiList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/search/SearchSugView$4;->onSuccess(Lcom/didi/common/model/PoiList;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/PoiList;)V
    .locals 3
    .parameter "poiList"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$4;->this$0:Lcom/didi/frame/search/SearchSugView;

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView$4;->this$0:Lcom/didi/frame/search/SearchSugView;

    #getter for: Lcom/didi/frame/search/SearchSugView;->resend:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/frame/search/SearchSugView;->access$500(Lcom/didi/frame/search/SearchSugView;)Landroid/widget/TextView;

    move-result-object v1

    #calls: Lcom/didi/frame/search/SearchSugView;->hideView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/frame/search/SearchSugView;->access$600(Lcom/didi/frame/search/SearchSugView;Landroid/view/View;)V

    .line 411
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$4;->this$0:Lcom/didi/frame/search/SearchSugView;

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView$4;->keyword:Ljava/lang/String;

    iget v2, p0, Lcom/didi/frame/search/SearchSugView$4;->cou:I

    #calls: Lcom/didi/frame/search/SearchSugView;->onGetPoiSug(Lcom/didi/common/model/PoiList;Ljava/lang/String;I)V
    invoke-static {v0, p1, v1, v2}, Lcom/didi/frame/search/SearchSugView;->access$700(Lcom/didi/frame/search/SearchSugView;Lcom/didi/common/model/PoiList;Ljava/lang/String;I)V

    .line 412
    return-void
.end method
