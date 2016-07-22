.class public Lcom/didi/common/database/HistoryPoiDBHelper;
.super Ljava/lang/Object;
.source "HistoryPoiDBHelper.java"


# static fields
.field private static instance:Lcom/didi/common/database/HistoryPoiDBHelper;


# instance fields
.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "content://com.diditaxi.psnger/suggestion"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/database/HistoryPoiDBHelper;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public static deleteByType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 29
    invoke-static {}, Lcom/didi/common/database/HistoryPoiDBHelper;->getInstance()Lcom/didi/common/database/HistoryPoiDBHelper;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/didi/common/database/HistoryPoiDBHelper;->doDelete(I)V

    .line 30
    return-void
.end method

.method private doDelete(I)V
    .locals 7
    .parameter "type"

    .prologue
    .line 66
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/database/HistoryPoiDBHelper;->mUri:Landroid/net/Uri;

    const-string v2, "(loc_type=?)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method private doInsert(Lcom/didi/common/model/Address;I)V
    .locals 7
    .parameter "locPoi"
    .parameter "type"

    .prologue
    .line 46
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/database/HistoryPoiDBHelper;->mUri:Landroid/net/Uri;

    const-string v3, "(loc_name=? AND loc_addr=?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 55
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 56
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "loc_name"

    invoke-virtual {p1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "loc_addr"

    invoke-virtual {p1}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "loc_city"

    invoke-virtual {p1}, Lcom/didi/common/model/Address;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "loc_lng"

    iget-object v2, p1, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "loc_lat"

    iget-object v2, p1, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "loc_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/database/HistoryPoiDBHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private get(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 3
    .parameter "city"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/Address;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/Address;>;"
    if-nez p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 87
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/didi/common/database/HistoryPoiDBHelper;->getAddrList(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 88
    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/didi/common/database/HistoryPoiDBHelper;->getAddrList(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_0

    .line 93
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/didi/common/database/HistoryPoiDBHelper;->getAddrList(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private getAddrList(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 9
    .parameter "city"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/Address;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 98
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/Address;>;"
    const-string v5, ""

    .line 100
    .local v5, sort:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 101
    const-string v5, "_id DESC"

    .line 102
    :cond_0
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/database/HistoryPoiDBHelper;->mUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loc_city like \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\' and ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "loc_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 105
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 123
    :cond_1
    :goto_0
    return-object v7

    .line 108
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    new-instance v8, Lcom/didi/common/model/Address;

    invoke-direct {v8}, Lcom/didi/common/model/Address;-><init>()V

    .line 110
    .local v8, locPoi:Lcom/didi/common/model/Address;
    if-nez p2, :cond_3

    const/4 v0, 0x4

    :goto_2
    invoke-virtual {v8, v0}, Lcom/didi/common/model/Address;->setType(I)V

    .line 111
    const-string v0, "loc_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 112
    const-string v0, "loc_addr"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 113
    const-string v0, "loc_city"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/didi/common/model/Address;->setCity(Ljava/lang/String;)V

    .line 114
    const-string v0, "loc_lng"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 115
    const-string v0, "loc_lat"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 116
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 118
    .end local v8           #locPoi:Lcom/didi/common/model/Address;
    :catch_0
    move-exception v0

    .line 120
    if-eqz v6, :cond_1

    .line 121
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 110
    .restart local v8       #locPoi:Lcom/didi/common/model/Address;
    :cond_3
    const/4 v0, 0x3

    goto :goto_2

    .line 120
    .end local v8           #locPoi:Lcom/didi/common/model/Address;
    :cond_4
    if-eqz v6, :cond_1

    .line 121
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 121
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static getInstance()Lcom/didi/common/database/HistoryPoiDBHelper;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/didi/common/database/HistoryPoiDBHelper;->instance:Lcom/didi/common/database/HistoryPoiDBHelper;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/didi/common/database/HistoryPoiDBHelper;

    invoke-direct {v0}, Lcom/didi/common/database/HistoryPoiDBHelper;-><init>()V

    sput-object v0, Lcom/didi/common/database/HistoryPoiDBHelper;->instance:Lcom/didi/common/database/HistoryPoiDBHelper;

    .line 21
    :cond_0
    sget-object v0, Lcom/didi/common/database/HistoryPoiDBHelper;->instance:Lcom/didi/common/database/HistoryPoiDBHelper;

    return-object v0
.end method

.method public static insert(Lcom/didi/common/model/Address;I)V
    .locals 1
    .parameter "locPoi"
    .parameter "type"

    .prologue
    .line 25
    invoke-static {}, Lcom/didi/common/database/HistoryPoiDBHelper;->getInstance()Lcom/didi/common/database/HistoryPoiDBHelper;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/didi/common/database/HistoryPoiDBHelper;->doInsert(Lcom/didi/common/model/Address;I)V

    .line 26
    return-void
.end method

.method public static insertAll(Ljava/util/ArrayList;I)V
    .locals 4
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/Address;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/Address;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/Address;

    .line 34
    .local v0, address:Lcom/didi/common/model/Address;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SugNewListItem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/didi/common/database/HistoryPoiDBHelper;->getInstance()Lcom/didi/common/database/HistoryPoiDBHelper;

    move-result-object v2

    invoke-direct {v2, v0, p1}, Lcom/didi/common/database/HistoryPoiDBHelper;->doInsert(Lcom/didi/common/model/Address;I)V

    goto :goto_0

    .line 37
    .end local v0           #address:Lcom/didi/common/model/Address;
    :cond_0
    return-void
.end method

.method public static select(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1
    .parameter "city"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Lcom/didi/common/database/HistoryPoiDBHelper;->getInstance()Lcom/didi/common/database/HistoryPoiDBHelper;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/didi/common/database/HistoryPoiDBHelper;->get(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
