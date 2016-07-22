.class public Lcom/zhihu/android/api/model/ValidateRegisterForm;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "ValidateRegisterForm.java"


# instance fields
.field public email:Lcom/zhihu/android/api/model/ApiError$Error;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "email"
    .end annotation
.end field

.field public fullname:Lcom/zhihu/android/api/model/ApiError$Error;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "fullname"
    .end annotation
.end field

.field public password:Lcom/zhihu/android/api/model/ApiError$Error;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "password"
    .end annotation
.end field

.field public phoneNumber:Lcom/zhihu/android/api/model/ApiError$Error;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "phone_no"
    .end annotation
.end field

.field public success:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "success"
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
