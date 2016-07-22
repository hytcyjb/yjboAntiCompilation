.class public Lcom/zhihu/android/api/model/Announcement;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Announcement.java"


# instance fields
.field public content:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "content"
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
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
    .line 25
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method
