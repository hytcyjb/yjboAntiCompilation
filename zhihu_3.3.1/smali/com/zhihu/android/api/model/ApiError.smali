.class public Lcom/zhihu/android/api/model/ApiError;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "ApiError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/api/model/ApiError$Error;
    }
.end annotation


# instance fields
.field private mError:Lcom/zhihu/android/api/model/ApiError$Error;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "error"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method

.method public static from(Lcom/zhihu/android/bumblebee/exception/BumblebeeException;)Lcom/zhihu/android/api/model/ApiError;
    .locals 3
    .parameter

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/zhihu/android/bumblebee/exception/BumblebeeException;->getContent()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/zhihu/android/api/model/ApiError;

    invoke-static {v0, v1}, Lcom/zhihu/android/api/util/c;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/zhihu/android/api/model/ZHObject;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/api/model/ApiError;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v0, Lcom/zhihu/android/api/model/ApiError;

    invoke-direct {v0}, Lcom/zhihu/android/api/model/ApiError;-><init>()V

    .line 62
    new-instance v1, Lcom/zhihu/android/api/model/ApiError$Error;

    invoke-direct {v1}, Lcom/zhihu/android/api/model/ApiError$Error;-><init>()V

    .line 63
    const-string v2, "\u53d1\u751f\u672a\u77e5\u7684\u9519\u8bef"

    iput-object v2, v1, Lcom/zhihu/android/api/model/ApiError$Error;->message:Ljava/lang/String;

    .line 64
    const/4 v2, 0x0

    iput v2, v1, Lcom/zhihu/android/api/model/ApiError$Error;->code:I

    .line 65
    iput-object v1, v0, Lcom/zhihu/android/api/model/ApiError;->mError:Lcom/zhihu/android/api/model/ApiError$Error;

    goto :goto_0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zhihu/android/api/model/ApiError;->mError:Lcom/zhihu/android/api/model/ApiError$Error;

    iget v0, v0, Lcom/zhihu/android/api/model/ApiError$Error;->code:I

    return v0
.end method

.method public getData()Lcom/zhihu/android/api/model/ExtraData;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zhihu/android/api/model/ApiError;->mError:Lcom/zhihu/android/api/model/ApiError$Error;

    iget-object v0, v0, Lcom/zhihu/android/api/model/ApiError$Error;->data:Lcom/zhihu/android/api/model/ExtraData;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zhihu/android/api/model/ApiError;->mError:Lcom/zhihu/android/api/model/ApiError$Error;

    iget-object v0, v0, Lcom/zhihu/android/api/model/ApiError$Error;->message:Ljava/lang/String;

    return-object v0
.end method
