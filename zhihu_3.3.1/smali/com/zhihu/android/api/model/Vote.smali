.class public Lcom/zhihu/android/api/model/Vote;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Vote.java"


# static fields
.field public static final ACTION_DOWN:I = -0x1

.field public static final ACTION_NONE:I = 0x0

.field public static final ACTION_UP:I = 0x1

.field public static final TYPE_ANSWER:I = 0x1

.field public static final TYPE_ANSWER_POST:I = 0x2

.field public static final TYPE_ARTICLE:I = 0x3


# instance fields
.field public voteUpCount:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "voteup_count"
    .end annotation
.end field

.field public voting:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "voting"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhihu/android/api/model/Vote;->voting:I

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Vote;->voteUpCount:J

    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    .line 53
    iput p1, p0, Lcom/zhihu/android/api/model/Vote;->voting:I

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zhihu/android/api/model/Vote;->voteUpCount:J

    .line 55
    return-void
.end method
