.class Lcom/didi/common/ui/citypicker/CityPickActivity$8;
.super Lcom/didi/common/net/ResponseListener;
.source "CityPickActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/citypicker/CityPickActivity;->getCityList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/CityIndexList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/citypicker/CityPickActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$8;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 286
    check-cast p1, Lcom/didi/common/model/CityIndexList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/citypicker/CityPickActivity$8;->onError(Lcom/didi/common/model/CityIndexList;)V

    return-void
.end method

.method public onError(Lcom/didi/common/model/CityIndexList;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 307
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 308
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$8;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #calls: Lcom/didi/common/ui/citypicker/CityPickActivity;->getDataFromDb()V
    invoke-static {v0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$1600(Lcom/didi/common/ui/citypicker/CityPickActivity;)V

    .line 309
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$8;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #calls: Lcom/didi/common/ui/citypicker/CityPickActivity;->onGetCityList()V
    invoke-static {v0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$1700(Lcom/didi/common/ui/citypicker/CityPickActivity;)V

    .line 310
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 311
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 286
    check-cast p1, Lcom/didi/common/model/CityIndexList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/citypicker/CityPickActivity$8;->onFail(Lcom/didi/common/model/CityIndexList;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/model/CityIndexList;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 299
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 300
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$8;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #calls: Lcom/didi/common/ui/citypicker/CityPickActivity;->getDataFromDb()V
    invoke-static {v0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$1600(Lcom/didi/common/ui/citypicker/CityPickActivity;)V

    .line 301
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$8;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #calls: Lcom/didi/common/ui/citypicker/CityPickActivity;->onGetCityList()V
    invoke-static {v0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$1700(Lcom/didi/common/ui/citypicker/CityPickActivity;)V

    .line 302
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 303
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 286
    check-cast p1, Lcom/didi/common/model/CityIndexList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/citypicker/CityPickActivity$8;->onSuccess(Lcom/didi/common/model/CityIndexList;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/CityIndexList;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 288
    invoke-virtual {p1}, Lcom/didi/common/model/CityIndexList;->hasUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    iget v1, p1, Lcom/didi/common/model/CityIndexList;->version:I

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->saveCityListVersion(I)V

    .line 290
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$8;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #calls: Lcom/didi/common/ui/citypicker/CityPickActivity;->setDataToDBFromNet(Lcom/didi/common/model/CityIndexList;)V
    invoke-static {v0, p1}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$1500(Lcom/didi/common/ui/citypicker/CityPickActivity;Lcom/didi/common/model/CityIndexList;)V

    .line 294
    :goto_0
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$8;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #calls: Lcom/didi/common/ui/citypicker/CityPickActivity;->onGetCityList()V
    invoke-static {v0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$1700(Lcom/didi/common/ui/citypicker/CityPickActivity;)V

    .line 295
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$8;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #calls: Lcom/didi/common/ui/citypicker/CityPickActivity;->getDataFromDb()V
    invoke-static {v0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$1600(Lcom/didi/common/ui/citypicker/CityPickActivity;)V

    goto :goto_0
.end method
