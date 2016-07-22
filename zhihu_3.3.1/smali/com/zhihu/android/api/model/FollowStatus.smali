.class public Lcom/zhihu/android/api/model/FollowStatus;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "FollowStatus.java"


# instance fields
.field public isFollowed:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_followed"
    .end annotation
.end field

.field public isFollowing:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_following"
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
