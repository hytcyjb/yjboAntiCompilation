.class public Lcom/zhihu/android/api/model/InviteeList;
.super Lcom/zhihu/android/api/model/ZHObjectList;
.source "InviteeList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhihu/android/api/model/ZHObjectList",
        "<",
        "Lcom/zhihu/android/api/model/People;",
        ">;"
    }
.end annotation


# instance fields
.field public leftInvitation:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "left_invitation"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/zhihu/android/api/model/ZHObjectList;-><init>()V

    return-void
.end method
