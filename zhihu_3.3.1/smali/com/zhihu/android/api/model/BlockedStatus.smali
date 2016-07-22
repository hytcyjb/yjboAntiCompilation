.class public Lcom/zhihu/android/api/model/BlockedStatus;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "BlockedStatus.java"


# instance fields
.field public isBlocked:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_blocked"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method
