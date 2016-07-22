.class public Lcom/zhihu/android/api/model/ZReactor$Action;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "ZReactor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhihu/android/api/model/ZReactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/api/model/ZReactor$Action$Meta;
    }
.end annotation


# instance fields
.field public actionType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "action_type"
    .end annotation
.end field

.field public id:Ljava/lang/Object;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "object_id"
    .end annotation
.end field

.field public meta:Lcom/zhihu/android/api/model/ZReactor$Action$Meta;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "object_meta"
    .end annotation
.end field

.field public objectType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "object_type"
    .end annotation
.end field

.field public others:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "others"
    .end annotation
.end field

.field public time:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method
