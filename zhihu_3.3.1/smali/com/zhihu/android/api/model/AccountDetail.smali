.class public Lcom/zhihu/android/api/model/AccountDetail;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "AccountDetail.java"


# static fields
.field public static final GENDER_FEMALE:I = 0x0

.field public static final GENDER_MALE:I = 0x1


# instance fields
.field public activationCode:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "activation_code"
    .end annotation
.end field

.field public actived:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "actived"
    .end annotation
.end field

.field public avatarPath:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "avatar_path"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "description"
    .end annotation
.end field

.field public email:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "email"
    .end annotation
.end field

.field public fullname:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "fullname"
    .end annotation
.end field

.field public gender:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "gender"
    .end annotation
.end field

.field public hashId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "hash_id"
    .end annotation
.end field

.field public headline:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "headline"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field public oldId:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "old_id"
    .end annotation
.end field

.field public passwordSet:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "password_set"
    .end annotation
.end field

.field public phoneNo:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "phone_no"
    .end annotation
.end field

.field public urlToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "url_token"
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
