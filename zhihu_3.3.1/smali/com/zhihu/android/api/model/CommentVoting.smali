.class public Lcom/zhihu/android/api/model/CommentVoting;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "CommentVoting.java"


# instance fields
.field private mVoteCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "vote_count"
    .end annotation
.end field

.field private mVoting:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "voting"
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


# virtual methods
.method public getVoteCount()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/zhihu/android/api/model/CommentVoting;->mVoteCount:J

    return-wide v0
.end method

.method public isVoting()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/zhihu/android/api/model/CommentVoting;->mVoting:Z

    return v0
.end method
