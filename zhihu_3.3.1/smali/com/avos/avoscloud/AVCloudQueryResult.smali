.class public Lcom/avos/avoscloud/AVCloudQueryResult;
.super Ljava/lang/Object;
.source "AVCloudQueryResult.java"


# instance fields
.field count:I

.field results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVCloudQueryResult;->results:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/avos/avoscloud/AVCloudQueryResult;->count:I

    return v0
.end method

.method public getResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/avos/avoscloud/AVCloudQueryResult;->results:Ljava/util/List;

    return-object v0
.end method

.method setCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/avos/avoscloud/AVCloudQueryResult;->count:I

    .line 31
    return-void
.end method

.method setResults(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    iput-object p1, p0, Lcom/avos/avoscloud/AVCloudQueryResult;->results:Ljava/util/List;

    .line 23
    return-void
.end method
