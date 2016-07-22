.class public Lcom/didi/common/model/MarkerFare;
.super Lcom/didi/common/model/BaseObject;
.source "MarkerFare.java"


# instance fields
.field public estimateDefault:Ljava/lang/String;

.field public estimateFare:Ljava/lang/String;

.field public estimateTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/MarkerFareTag;",
            ">;"
        }
    .end annotation
.end field

.field public estimateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method
