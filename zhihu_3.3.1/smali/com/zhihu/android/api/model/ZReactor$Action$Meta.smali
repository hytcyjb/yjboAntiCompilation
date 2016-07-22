.class public Lcom/zhihu/android/api/model/ZReactor$Action$Meta;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "ZReactor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhihu/android/api/model/ZReactor$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Meta"
.end annotation


# instance fields
.field public comments:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "comments"
    .end annotation
.end field

.field public create:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "create"
    .end annotation
.end field

.field public offset:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "offset"
    .end annotation
.end field

.field public source:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "source"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "source_type"
    .end annotation
.end field

.field public voteups:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "voteups"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method
