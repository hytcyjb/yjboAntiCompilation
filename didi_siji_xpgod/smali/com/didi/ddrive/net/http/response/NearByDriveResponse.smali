.class public Lcom/didi/ddrive/net/http/response/NearByDriveResponse;
.super Ljava/lang/Object;
.source "NearByDriveResponse.java"


# instance fields
.field private drivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/ddrive/net/http/response/NearByDriveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrivers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/ddrive/net/http/response/NearByDriveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10
    iget-object v0, p0, Lcom/didi/ddrive/net/http/response/NearByDriveResponse;->drivers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setDrivers(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/ddrive/net/http/response/NearByDriveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, drivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/ddrive/net/http/response/NearByDriveInfo;>;"
    iput-object p1, p0, Lcom/didi/ddrive/net/http/response/NearByDriveResponse;->drivers:Ljava/util/ArrayList;

    .line 15
    return-void
.end method
