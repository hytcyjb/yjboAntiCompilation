.class public Lcom/zhihu/android/api/model/MultiAnswer;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "MultiAnswer.java"


# instance fields
.field public answers:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "answers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/api/model/Answer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObject;-><init>()V

    return-void
.end method
