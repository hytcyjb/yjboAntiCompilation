.class public Lcom/zhihu/android/api/model/CollectState;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "CollectState.java"


# instance fields
.field public isFavorited:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_favorited"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method
