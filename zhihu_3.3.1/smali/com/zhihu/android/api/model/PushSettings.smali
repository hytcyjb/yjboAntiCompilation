.class public Lcom/zhihu/android/api/model/PushSettings;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "PushSettings.java"


# instance fields
.field public beCommented:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "be_commented"
    .end annotation
.end field

.field public beFollowed:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "be_followed"
    .end annotation
.end field

.field public beInvited:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "be_invited"
    .end annotation
.end field

.field public beThanked:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "be_thanked"
    .end annotation
.end field

.field public beVoted:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "be_voted"
    .end annotation
.end field

.field public newAnswer:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "new_answer"
    .end annotation
.end field

.field public newMessage:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "new_message"
    .end annotation
.end field

.field public notDisturb:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "not_disturb"
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
