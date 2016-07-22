.class public Lcom/zhihu/android/api/model/Book;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Book.java"


# instance fields
.field public author:Lcom/zhihu/android/api/model/People;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "author"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "name"
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
    .line 23
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method
