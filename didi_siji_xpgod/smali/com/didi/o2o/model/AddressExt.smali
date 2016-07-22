.class public Lcom/didi/o2o/model/AddressExt;
.super Ljava/lang/Object;
.source "AddressExt.java"


# instance fields
.field public addressDetail:Ljava/lang/String;

.field public lat:Ljava/lang/String;

.field public lng:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromJson(Lorg/json/JSONObject;)Lcom/didi/o2o/model/AddressExt;
    .locals 3
    .parameter "json"

    .prologue
    .line 47
    new-instance v0, Lcom/didi/o2o/model/AddressExt;

    invoke-direct {v0}, Lcom/didi/o2o/model/AddressExt;-><init>()V

    .line 48
    .local v0, addressExt:Lcom/didi/o2o/model/AddressExt;
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/o2o/model/AddressExt;->name:Ljava/lang/String;

    .line 49
    const-string v1, "address"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/o2o/model/AddressExt;->addressDetail:Ljava/lang/String;

    .line 50
    const-string v1, "lng"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/o2o/model/AddressExt;->lng:Ljava/lang/String;

    .line 51
    const-string v1, "lat"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/o2o/model/AddressExt;->lat:Ljava/lang/String;

    .line 52
    const-string v1, "source"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/o2o/model/AddressExt;->source:Ljava/lang/String;

    .line 53
    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/didi/o2o/model/AddressExt;->type:I

    .line 54
    return-object v0
.end method


# virtual methods
.method public getAddressByExt(Lcom/didi/o2o/model/AddressExt;)Lcom/didi/common/model/Address;
    .locals 2
    .parameter "ext"

    .prologue
    .line 64
    new-instance v0, Lcom/didi/common/model/Address;

    invoke-direct {v0}, Lcom/didi/common/model/Address;-><init>()V

    .line 65
    .local v0, address:Lcom/didi/common/model/Address;
    iget-object v1, p1, Lcom/didi/o2o/model/AddressExt;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->name:Ljava/lang/String;

    .line 66
    iget-object v1, p1, Lcom/didi/o2o/model/AddressExt;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    .line 67
    iget-object v1, p1, Lcom/didi/o2o/model/AddressExt;->addressDetail:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    .line 68
    iget-object v1, p1, Lcom/didi/o2o/model/AddressExt;->lng:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 69
    iget-object v1, p1, Lcom/didi/o2o/model/AddressExt;->lat:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 70
    return-object v0
.end method

.method public getBusinessByCurrentType()Lcom/didi/frame/business/Business;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 78
    iget v1, p0, Lcom/didi/o2o/model/AddressExt;->type:I

    if-nez v1, :cond_0

    .line 87
    :goto_0
    return-object v0

    .line 81
    :cond_0
    iget v1, p0, Lcom/didi/o2o/model/AddressExt;->type:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 83
    :pswitch_0
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    goto :goto_0

    .line 85
    :pswitch_1
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
