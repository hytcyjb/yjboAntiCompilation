.class public Lcom/zhihu/android/api/model/Feed;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Feed.java"


# instance fields
.field public actor:Lcom/zhihu/android/api/model/People;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "actor"
    .end annotation
.end field

.field public actors:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "actors"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/ZHObject;",
            ">;"
        }
    .end annotation
.end field

.field public ad:Lcom/zhihu/android/api/model/Ad;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "ad"
    .end annotation
.end field

.field public card:Lcom/zhihu/android/api/model/ActionCard;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "card"
    .end annotation
.end field

.field public count:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "count"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field public target:Lcom/zhihu/android/api/model/ZHObject;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "target"
    .end annotation
.end field

.field public updatedTime:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "updated_time"
    .end annotation
.end field

.field public verb:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "verb"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method
