.class public Lcom/zhihu/android/api/model/ExtraData;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "ExtraData.java"


# instance fields
.field public avatarUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "avatar_url"
    .end annotation
.end field

.field public email:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "email"
    .end annotation
.end field

.field public gender:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "gender"
    .end annotation
.end field

.field public headline:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "headline"
    .end annotation
.end field

.field public hint:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "hint"
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

.field public phoneNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "phone_no"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method
