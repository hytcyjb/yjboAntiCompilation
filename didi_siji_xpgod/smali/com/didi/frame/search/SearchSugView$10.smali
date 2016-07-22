.class Lcom/didi/frame/search/SearchSugView$10;
.super Ljava/lang/Object;
.source "SearchSugView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/search/SearchSugView;->commitHomeAddressAsync(Lcom/didi/common/model/Address;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/search/SearchSugView;

.field final synthetic val$homeAddress:Lcom/didi/common/model/Address;


# direct methods
.method constructor <init>(Lcom/didi/frame/search/SearchSugView;Lcom/didi/common/model/Address;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 932
    iput-object p1, p0, Lcom/didi/frame/search/SearchSugView$10;->this$0:Lcom/didi/frame/search/SearchSugView;

    iput-object p2, p0, Lcom/didi/frame/search/SearchSugView$10;->val$homeAddress:Lcom/didi/common/model/Address;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 936
    const v0, 0x7f0b01d6

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 937
    .local v1, companyName:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getHomeName()Ljava/lang/String;

    move-result-object v2

    .line 938
    .local v2, companyDisplyName:Ljava/lang/String;
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$10;->val$homeAddress:Lcom/didi/common/model/Address;

    iget-object v4, v0, Lcom/didi/common/model/Address;->uid:Ljava/lang/String;

    .line 939
    .local v4, uid:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/Utils;->getSimpleCityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 940
    .local v9, city:Ljava/lang/String;
    invoke-static {v9}, Lcom/didi/common/util/Utils;->getCityId(Ljava/lang/String;)I

    move-result v3

    .line 941
    .local v3, cityid:I
    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    .line 942
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0, v9}, Lcom/didi/common/database/CityListHelper;->getCityByName(Lcom/didi/frame/business/Business;Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v10

    .line 943
    .local v10, cityObj:Lcom/didi/common/model/City;
    if-eqz v10, :cond_0

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---------------city id db:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v10, Lcom/didi/common/model/City;->cityID:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " city:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v10, Lcom/didi/common/model/City;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 945
    iget v3, v10, Lcom/didi/common/model/City;->cityID:I

    .line 948
    .end local v10           #cityObj:Lcom/didi/common/model/City;
    :cond_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getHomeAddr()Ljava/lang/String;

    move-result-object v5

    .line 949
    .local v5, addr:Ljava/lang/String;
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView$10;->this$0:Lcom/didi/frame/search/SearchSugView;

    iget-object v6, p0, Lcom/didi/frame/search/SearchSugView$10;->val$homeAddress:Lcom/didi/common/model/Address;

    iget-object v6, v6, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    iget-object v7, p0, Lcom/didi/frame/search/SearchSugView$10;->val$homeAddress:Lcom/didi/common/model/Address;

    iget-object v7, v7, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    iget-object v8, p0, Lcom/didi/frame/search/SearchSugView$10;->val$homeAddress:Lcom/didi/common/model/Address;

    iget v8, v8, Lcom/didi/common/model/Address;->cotype:I

    #calls: Lcom/didi/frame/search/SearchSugView;->commitAddr(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static/range {v0 .. v8}, Lcom/didi/frame/search/SearchSugView;->access$2900(Lcom/didi/frame/search/SearchSugView;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 950
    return-void
.end method
