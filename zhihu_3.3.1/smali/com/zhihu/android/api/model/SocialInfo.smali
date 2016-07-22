.class public Lcom/zhihu/android/api/model/SocialInfo;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "SocialInfo.java"


# instance fields
.field public avatar:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "avatar"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "name"
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
