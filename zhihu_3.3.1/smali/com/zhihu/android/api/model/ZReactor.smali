.class public Lcom/zhihu/android/api/model/ZReactor;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "ZReactor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/api/model/ZReactor$Action;
    }
.end annotation


# instance fields
.field public actions:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/ZReactor$Action;",
            ">;"
        }
    .end annotation
.end field

.field public context:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "context"
    .end annotation
.end field

.field public mid:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "mid"
    .end annotation
.end field

.field public termVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "term_version"
    .end annotation
.end field

.field public terminal:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "terminal"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method
