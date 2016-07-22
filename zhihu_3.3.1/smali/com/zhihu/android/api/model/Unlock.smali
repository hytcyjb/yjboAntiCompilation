.class public Lcom/zhihu/android/api/model/Unlock;
.super Lcom/zhihu/android/api/model/ZHObject;
.source "Unlock.java"


# instance fields
.field public challenges:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "challenge"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zhihu/android/api/model/Challenge;",
            ">;"
        }
    .end annotation
.end field

.field public lockIn:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "lock_in"
    .end annotation
.end field

.field public unlockTicket:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "unlock_ticket"
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
