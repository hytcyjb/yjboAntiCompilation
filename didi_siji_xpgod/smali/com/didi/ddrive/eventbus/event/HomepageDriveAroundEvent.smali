.class public Lcom/didi/ddrive/eventbus/event/HomepageDriveAroundEvent;
.super Ljava/lang/Object;
.source "HomepageDriveAroundEvent.java"


# instance fields
.field public drivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/ddrive/net/http/response/NearByDriveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public responseSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/ddrive/eventbus/event/HomepageDriveAroundEvent;->responseSuccess:Z

    return-void
.end method
