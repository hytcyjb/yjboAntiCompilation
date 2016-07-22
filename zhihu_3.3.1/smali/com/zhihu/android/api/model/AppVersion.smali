.class public Lcom/zhihu/android/api/model/AppVersion;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "AppVersion.java"


# instance fields
.field public latest:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "latest"
    .end annotation
.end field

.field public message:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "msg"
    .end annotation
.end field

.field public status:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "status"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "url"
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


# virtual methods
.method public getLatest()I
    .locals 1

    .prologue
    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/zhihu/android/api/model/AppVersion;->latest:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 27
    :goto_0
    return v0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUpdate()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 32
    iget v1, p0, Lcom/zhihu/android/api/model/AppVersion;->status:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
