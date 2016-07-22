.class Lcom/didi/frame/DepartureActivity$5;
.super Lcom/didi/common/net/ResponseListener;
.source "DepartureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/DepartureActivity;->getPoiSug(Ljava/lang/String;)V
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

.field final synthetic this$0:Lcom/didi/frame/DepartureActivity;

.field final synthetic val$sug:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/didi/frame/DepartureActivity;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/didi/frame/DepartureActivity$5;->this$0:Lcom/didi/frame/DepartureActivity;

    iput-object p2, p0, Lcom/didi/frame/DepartureActivity$5;->val$sug:Ljava/lang/String;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    .line 420
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$5;->val$sug:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity$5;->keyword:Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$5;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->count:I
    invoke-static {v0}, Lcom/didi/frame/DepartureActivity;->access$1700(Lcom/didi/frame/DepartureActivity;)I

    move-result v0

    iput v0, p0, Lcom/didi/frame/DepartureActivity$5;->cou:I

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 419
    check-cast p1, Lcom/didi/common/model/PoiList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/DepartureActivity$5;->onError(Lcom/didi/common/model/PoiList;)V

    return-void
.end method

.method public onError(Lcom/didi/common/model/PoiList;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$5;->this$0:Lcom/didi/frame/DepartureActivity;

    iget-object v1, p1, Lcom/didi/common/model/PoiList;->errmsg:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/frame/DepartureActivity$5;->keyword:Ljava/lang/String;

    iget v3, p0, Lcom/didi/frame/DepartureActivity$5;->cou:I

    #calls: Lcom/didi/frame/DepartureActivity;->onPoiSugFail(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/didi/frame/DepartureActivity;->access$2000(Lcom/didi/frame/DepartureActivity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 435
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 419
    check-cast p1, Lcom/didi/common/model/PoiList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/DepartureActivity$5;->onFail(Lcom/didi/common/model/PoiList;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/model/PoiList;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$5;->this$0:Lcom/didi/frame/DepartureActivity;

    iget-object v1, p1, Lcom/didi/common/model/PoiList;->errmsg:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/frame/DepartureActivity$5;->keyword:Ljava/lang/String;

    iget v3, p0, Lcom/didi/frame/DepartureActivity$5;->cou:I

    #calls: Lcom/didi/frame/DepartureActivity;->onPoiSugFail(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/didi/frame/DepartureActivity;->access$2000(Lcom/didi/frame/DepartureActivity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 431
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 419
    check-cast p1, Lcom/didi/common/model/PoiList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/DepartureActivity$5;->onFinish(Lcom/didi/common/model/PoiList;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/PoiList;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 439
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 440
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$5;->this$0:Lcom/didi/frame/DepartureActivity;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$5;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->sugloading:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/didi/frame/DepartureActivity;->access$1100(Lcom/didi/frame/DepartureActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    #calls: Lcom/didi/frame/DepartureActivity;->hideView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/frame/DepartureActivity;->access$1000(Lcom/didi/frame/DepartureActivity;Landroid/view/View;)V

    .line 441
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$5;->this$0:Lcom/didi/frame/DepartureActivity;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$5;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->sugListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/didi/frame/DepartureActivity;->access$1500(Lcom/didi/frame/DepartureActivity;)Landroid/widget/ListView;

    move-result-object v1

    #calls: Lcom/didi/frame/DepartureActivity;->showView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/frame/DepartureActivity;->access$1600(Lcom/didi/frame/DepartureActivity;Landroid/view/View;)V

    .line 442
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 419
    check-cast p1, Lcom/didi/common/model/PoiList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/DepartureActivity$5;->onSuccess(Lcom/didi/common/model/PoiList;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/PoiList;)V
    .locals 3
    .parameter "poiList"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$5;->this$0:Lcom/didi/frame/DepartureActivity;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$5;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->resend:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/didi/frame/DepartureActivity;->access$1800(Lcom/didi/frame/DepartureActivity;)Landroid/widget/TextView;

    move-result-object v1

    #calls: Lcom/didi/frame/DepartureActivity;->hideView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/frame/DepartureActivity;->access$1000(Lcom/didi/frame/DepartureActivity;Landroid/view/View;)V

    .line 426
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$5;->this$0:Lcom/didi/frame/DepartureActivity;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$5;->keyword:Ljava/lang/String;

    iget v2, p0, Lcom/didi/frame/DepartureActivity$5;->cou:I

    #calls: Lcom/didi/frame/DepartureActivity;->onGetPoiSug(Lcom/didi/common/model/PoiList;Ljava/lang/String;I)V
    invoke-static {v0, p1, v1, v2}, Lcom/didi/frame/DepartureActivity;->access$1900(Lcom/didi/frame/DepartureActivity;Lcom/didi/common/model/PoiList;Ljava/lang/String;I)V

    .line 427
    return-void
.end method
