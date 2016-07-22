.class public Lcom/didi/taxi/model/TaxiFeeDetail;
.super Lcom/didi/common/model/BaseObject;
.source "TaxiFeeDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public common_trip_total:I

.field public mIsUpdate:Z

.field public mTaxiFeeItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;",
            ">;"
        }
    .end annotation
.end field

.field public mToastContent:Ljava/lang/String;

.field public mTotal:I

.field public other_trip_total:I

.field public self_trip_total:I

.field public tip:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 35
    iput v0, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->tip:I

    .line 36
    iput v0, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->other_trip_total:I

    .line 140
    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 11
    .parameter "obj"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 45
    const-string v7, "total"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->mTotal:I

    .line 46
    const-string v7, "toastContent"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->mToastContent:Ljava/lang/String;

    .line 47
    const-string v7, "isUpdate"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v8, :cond_1

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->mIsUpdate:Z

    .line 48
    const-string v7, "detail"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 49
    .local v0, detailArray:Lorg/json/JSONArray;
    new-instance v7, Lcom/didi/common/model/JSONHelper;

    invoke-direct {v7}, Lcom/didi/common/model/JSONHelper;-><init>()V

    new-instance v10, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;

    invoke-direct {v10, p0}, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;-><init>(Lcom/didi/taxi/model/TaxiFeeDetail;)V

    invoke-virtual {v7, v0, v10}, Lcom/didi/common/model/JSONHelper;->parseJSONArray(Lorg/json/JSONArray;Lcom/didi/common/model/BaseObject;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->mTaxiFeeItems:Ljava/util/ArrayList;

    .line 51
    iget-object v7, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->mTaxiFeeItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, i:I
    :goto_1
    if-lez v1, :cond_2

    .line 52
    iget-object v7, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->mTaxiFeeItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;

    iget v7, v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemValue:I

    if-nez v7, :cond_0

    .line 53
    iget-object v7, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->mTaxiFeeItems:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->mTaxiFeeItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v0           #detailArray:Lorg/json/JSONArray;
    .end local v1           #i:I
    :cond_1
    move v7, v9

    .line 47
    goto :goto_0

    .line 57
    .restart local v0       #detailArray:Lorg/json/JSONArray;
    .restart local v1       #i:I
    :cond_2
    const-string v7, "self_trip_total"

    invoke-virtual {p1, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->self_trip_total:I

    .line 58
    const-string v7, "common_trip_total"

    invoke-virtual {p1, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->common_trip_total:I

    .line 59
    const-string v7, "tip"

    invoke-virtual {p1, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->tip:I

    .line 60
    const-string v7, "other_trip_total"

    invoke-virtual {p1, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->other_trip_total:I

    .line 62
    const-string v7, "trip_total"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 63
    const-string v7, "trip_total"

    invoke-virtual {p1, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->mTotal:I

    .line 65
    :cond_3
    const-string v7, "self_trip_items"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 66
    .local v5, jaSelfTripItems:Lorg/json/JSONArray;
    const-string v7, "common_trip_items"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 68
    .local v4, jaCommonTripItems:Lorg/json/JSONArray;
    if-eqz v5, :cond_6

    .line 70
    new-instance v3, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;

    invoke-direct {v3, p0}, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;-><init>(Lcom/didi/taxi/model/TaxiFeeDetail;)V

    .line 71
    .local v3, itemTitle:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    iput v8, v3, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->isTitle:I

    .line 72
    const v7, 0x7f0b052f

    invoke-static {v7}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemName:Ljava/lang/String;

    .line 73
    iget v7, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->self_trip_total:I

    iput v7, v3, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemValue:I

    .line 74
    iget v7, v3, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemValue:I

    if-lez v7, :cond_4

    .line 75
    iget-object v7, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->mTaxiFeeItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_6

    .line 79
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 80
    .local v6, temp:Lorg/json/JSONObject;
    if-eqz v6, :cond_5

    .line 81
    new-instance v2, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;

    invoke-direct {v2, p0}, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;-><init>(Lcom/didi/taxi/model/TaxiFeeDetail;)V

    .line 82
    .local v2, item:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    const-string v7, "name"

    const-string v10, ""

    invoke-virtual {v6, v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemName:Ljava/lang/String;

    .line 83
    const-string v7, "value"

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v2, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemValue:I

    .line 84
    iput v9, v2, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->isTitle:I

    .line 86
    iget v7, v2, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemValue:I

    if-lez v7, :cond_5

    .line 87
    iget-object v7, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->mTaxiFeeItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .end local v2           #item:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 92
    .end local v3           #itemTitle:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    .end local v6           #temp:Lorg/json/JSONObject;
    :cond_6
    if-eqz v4, :cond_9

    .line 94
    new-instance v3, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;

    invoke-direct {v3, p0}, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;-><init>(Lcom/didi/taxi/model/TaxiFeeDetail;)V

    .line 95
    .restart local v3       #itemTitle:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    iput v8, v3, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->isTitle:I

    .line 96
    const v7, 0x7f0b052d

    invoke-static {v7}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemName:Ljava/lang/String;

    .line 97
    iget v7, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->common_trip_total:I

    iput v7, v3, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemValue:I

    .line 98
    iget v7, v3, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemValue:I

    if-lez v7, :cond_7

    .line 99
    iget-object v7, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->mTaxiFeeItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_7
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_9

    .line 103
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 104
    .restart local v6       #temp:Lorg/json/JSONObject;
    if-eqz v6, :cond_8

    .line 105
    new-instance v2, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;

    invoke-direct {v2, p0}, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;-><init>(Lcom/didi/taxi/model/TaxiFeeDetail;)V

    .line 106
    .restart local v2       #item:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    const-string v7, "name"

    const-string v10, ""

    invoke-virtual {v6, v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemName:Ljava/lang/String;

    .line 107
    const-string v7, "value"

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v2, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemValue:I

    .line 108
    iput v9, v2, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->isTitle:I

    .line 110
    iget v7, v2, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemValue:I

    if-lez v7, :cond_8

    .line 111
    iget-object v7, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->mTaxiFeeItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v2           #item:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 117
    .end local v3           #itemTitle:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    .end local v6           #temp:Lorg/json/JSONObject;
    :cond_9
    iget v7, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->tip:I

    if-eqz v7, :cond_a

    .line 118
    new-instance v3, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;

    invoke-direct {v3, p0}, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;-><init>(Lcom/didi/taxi/model/TaxiFeeDetail;)V

    .line 119
    .restart local v3       #itemTitle:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    iput v8, v3, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->isTitle:I

    .line 120
    const v7, 0x7f0b0530

    invoke-static {v7}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemName:Ljava/lang/String;

    .line 121
    iget v7, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->tip:I

    iput v7, v3, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemValue:I

    .line 122
    iget v7, v3, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemValue:I

    if-lez v7, :cond_a

    .line 123
    iget-object v7, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->mTaxiFeeItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v3           #itemTitle:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    :cond_a
    iget v7, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->other_trip_total:I

    if-eqz v7, :cond_b

    .line 128
    new-instance v3, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;

    invoke-direct {v3, p0}, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;-><init>(Lcom/didi/taxi/model/TaxiFeeDetail;)V

    .line 129
    .restart local v3       #itemTitle:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    iput v8, v3, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->isTitle:I

    .line 130
    const v7, 0x7f0b052e

    invoke-static {v7}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemName:Ljava/lang/String;

    .line 131
    iget v7, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->other_trip_total:I

    iput v7, v3, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemValue:I

    .line 132
    iget v7, v3, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemValue:I

    if-lez v7, :cond_b

    .line 133
    iget-object v7, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->mTaxiFeeItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .end local v3           #itemTitle:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    :cond_b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaxiFeeDetail [mTaxiFeeItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->mTaxiFeeItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTotal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->mTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mToastContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->mToastContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/taxi/model/TaxiFeeDetail;->mIsUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
