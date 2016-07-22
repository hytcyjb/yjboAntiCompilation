.class public Lcom/zhihu/android/api/model/NotificationAction;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "NotificationAction.java"


# instance fields
.field public actionName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "action_name"
    .end annotation
.end field

.field public operator:Lcom/zhihu/android/api/model/People;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "operator"
    .end annotation
.end field

.field public target:Lcom/zhihu/android/api/model/ZHObject;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "target"
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
