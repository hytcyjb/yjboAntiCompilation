.class public Lcom/zhihu/android/api/model/AuthorizationCode;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "AuthorizationCode.java"


# instance fields
.field public authorizationCode:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "authorization_code"
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
