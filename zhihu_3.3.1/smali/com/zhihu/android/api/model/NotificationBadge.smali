.class public Lcom/zhihu/android/api/model/NotificationBadge;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "NotificationBadge.java"


# instance fields
.field public contentHasNew:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "content_has_new"
    .end annotation
.end field

.field public followHasNew:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "follow_has_new"
    .end annotation
.end field

.field public likeHasNew:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "love_has_new"
    .end annotation
.end field

.field public newContentCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "new_content_count"
    .end annotation
.end field

.field public newFollowCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "new_follow_count"
    .end annotation
.end field

.field public newLikeCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "new_love_count"
    .end annotation
.end field

.field public newMessagesCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "message_count"
    .end annotation
.end field

.field public tabViewed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method


# virtual methods
.method public clearWithoutMessage()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 56
    iput-wide v2, p0, Lcom/zhihu/android/api/model/NotificationBadge;->newContentCount:J

    .line 57
    iput-wide v2, p0, Lcom/zhihu/android/api/model/NotificationBadge;->newLikeCount:J

    .line 58
    iput-wide v2, p0, Lcom/zhihu/android/api/model/NotificationBadge;->newFollowCount:J

    .line 59
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->contentHasNew:Z

    .line 60
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->followHasNew:Z

    .line 61
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->likeHasNew:Z

    .line 62
    return-void
.end method

.method public hasNewContent()Z
    .locals 4

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->contentHasNew:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->newContentCount:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNewFollow()Z
    .locals 4

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->followHasNew:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->newFollowCount:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNewLike()Z
    .locals 4

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->likeHasNew:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->newLikeCount:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notificationsCount()J
    .locals 4

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->newContentCount:J

    iget-wide v2, p0, Lcom/zhihu/android/api/model/NotificationBadge;->newLikeCount:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/zhihu/android/api/model/NotificationBadge;->newFollowCount:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public readContent()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 65
    iget-wide v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->newContentCount:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->newContentCount:J

    .line 66
    iget-wide v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->newContentCount:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->contentHasNew:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->contentHasNew:Z

    .line 67
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFollow()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 70
    iget-wide v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->newFollowCount:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->newFollowCount:J

    .line 71
    iget-wide v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->newFollowCount:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->followHasNew:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->followHasNew:Z

    .line 72
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readLike()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 75
    iget-wide v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->newLikeCount:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->newLikeCount:J

    .line 76
    iget-wide v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->newLikeCount:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->likeHasNew:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->likeHasNew:Z

    .line 77
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShakeBell()Z
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/zhihu/android/api/model/NotificationBadge;->hasNewContent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/api/model/NotificationBadge;->hasNewLike()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/api/model/NotificationBadge;->hasNewFollow()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/NotificationBadge;->tabViewed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
