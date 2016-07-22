.class Lcom/didi/frame/DepartureActivity$13;
.super Lcom/didi/common/net/ResponseListener;
.source "DepartureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/DepartureActivity;->getAddressList(DDLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/AddressList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/DepartureActivity;


# direct methods
.method constructor <init>(Lcom/didi/frame/DepartureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/didi/frame/DepartureActivity$13;->this$0:Lcom/didi/frame/DepartureActivity;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/common/model/AddressList;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 691
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 692
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$13;->this$0:Lcom/didi/frame/DepartureActivity;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$13;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->loadFail:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/didi/frame/DepartureActivity;->access$3400(Lcom/didi/frame/DepartureActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    #calls: Lcom/didi/frame/DepartureActivity;->showView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/frame/DepartureActivity;->access$1600(Lcom/didi/frame/DepartureActivity;Landroid/view/View;)V

    .line 693
    return-void
.end method

.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 680
    check-cast p1, Lcom/didi/common/model/AddressList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/DepartureActivity$13;->onError(Lcom/didi/common/model/AddressList;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/model/AddressList;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 698
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 699
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$13;->this$0:Lcom/didi/frame/DepartureActivity;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$13;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->loadFail:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/didi/frame/DepartureActivity;->access$3400(Lcom/didi/frame/DepartureActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    #calls: Lcom/didi/frame/DepartureActivity;->showView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/frame/DepartureActivity;->access$1600(Lcom/didi/frame/DepartureActivity;Landroid/view/View;)V

    .line 700
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 680
    check-cast p1, Lcom/didi/common/model/AddressList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/DepartureActivity$13;->onFail(Lcom/didi/common/model/AddressList;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/AddressList;)V
    .locals 2
    .parameter "addressList"

    .prologue
    .line 704
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 705
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$13;->this$0:Lcom/didi/frame/DepartureActivity;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$13;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->loading:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/didi/frame/DepartureActivity;->access$3500(Lcom/didi/frame/DepartureActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    #calls: Lcom/didi/frame/DepartureActivity;->hideView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/frame/DepartureActivity;->access$1000(Lcom/didi/frame/DepartureActivity;Landroid/view/View;)V

    .line 706
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 680
    check-cast p1, Lcom/didi/common/model/AddressList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/DepartureActivity$13;->onFinish(Lcom/didi/common/model/AddressList;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/AddressList;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 684
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$13;->this$0:Lcom/didi/frame/DepartureActivity;

    #calls: Lcom/didi/frame/DepartureActivity;->onUpdateAddressList(Lcom/didi/common/model/AddressList;)V
    invoke-static {v0, p1}, Lcom/didi/frame/DepartureActivity;->access$3300(Lcom/didi/frame/DepartureActivity;Lcom/didi/common/model/AddressList;)V

    .line 685
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$13;->this$0:Lcom/didi/frame/DepartureActivity;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$13;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/didi/frame/DepartureActivity;->access$100(Lcom/didi/frame/DepartureActivity;)Landroid/widget/ListView;

    move-result-object v1

    #calls: Lcom/didi/frame/DepartureActivity;->enableListClick(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/frame/DepartureActivity;->access$300(Lcom/didi/frame/DepartureActivity;Landroid/view/View;)V

    .line 686
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 687
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 680
    check-cast p1, Lcom/didi/common/model/AddressList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/DepartureActivity$13;->onSuccess(Lcom/didi/common/model/AddressList;)V

    return-void
.end method
