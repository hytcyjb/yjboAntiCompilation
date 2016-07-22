.class public Lcom/zhihu/android/api/model/ZHObjectList;
.super Lcom/google/api/client/json/GenericJson;
.source "ZHObjectList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/zhihu/android/api/model/ZHObject;",
        ">",
        "Lcom/google/api/client/json/GenericJson;"
    }
.end annotation


# instance fields
.field public data:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field public paging:Lcom/zhihu/android/api/model/Paging;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "paging"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method
