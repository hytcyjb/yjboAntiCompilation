.class public Lcom/zhihu/android/api/model/ApiError$Error;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "ApiError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhihu/android/api/model/ApiError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# instance fields
.field public code:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "code"
    .end annotation
.end field

.field public data:Lcom/zhihu/android/api/model/ExtraData;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "data"
    .end annotation
.end field

.field public message:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "message"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method
