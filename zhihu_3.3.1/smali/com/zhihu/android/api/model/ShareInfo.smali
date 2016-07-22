.class public Lcom/zhihu/android/api/model/ShareInfo;
.super Ljava/lang/Object;
.source "ShareInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/api/model/ShareInfo$ShareStatus;,
        Lcom/zhihu/android/api/model/ShareInfo$ShareTemplates;
    }
.end annotation


# instance fields
.field private shareStatus:Lcom/zhihu/android/api/model/ShareInfo$ShareStatus;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "status"
    .end annotation
.end field

.field private shareTemplates:Lcom/zhihu/android/api/model/ShareInfo$ShareTemplates;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "templates"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQQName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zhihu/android/api/model/ShareInfo;->shareStatus:Lcom/zhihu/android/api/model/ShareInfo$ShareStatus;

    iget-object v0, v0, Lcom/zhihu/android/api/model/ShareInfo$ShareStatus;->qqStatus:Lcom/zhihu/android/api/model/ShareInfo$ShareStatus$Status;

    iget-object v0, v0, Lcom/zhihu/android/api/model/ShareInfo$ShareStatus$Status;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getShortUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zhihu/android/api/model/ShareInfo;->shareTemplates:Lcom/zhihu/android/api/model/ShareInfo$ShareTemplates;

    iget-object v0, v0, Lcom/zhihu/android/api/model/ShareInfo$ShareTemplates;->shortUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSinaName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/zhihu/android/api/model/ShareInfo;->shareStatus:Lcom/zhihu/android/api/model/ShareInfo$ShareStatus;

    iget-object v0, v0, Lcom/zhihu/android/api/model/ShareInfo$ShareStatus;->sinaStatus:Lcom/zhihu/android/api/model/ShareInfo$ShareStatus$Status;

    iget-object v0, v0, Lcom/zhihu/android/api/model/ShareInfo$ShareStatus$Status;->name:Ljava/lang/String;

    return-object v0
.end method
