.class public Lcom/zhihu/android/api/model/RenameStatus;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "RenameStatus.java"


# instance fields
.field public canRename:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "can_rename"
    .end annotation
.end field

.field public isForcedRename:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "is_force_renamed"
    .end annotation
.end field

.field public nameUpdatedTime:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "name_updated"
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
