.class public Lcom/didi/ddrive/net/http/response/DriveTRResponse;
.super Ljava/lang/Object;
.source "DriveTRResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/net/http/response/DriveTRResponse$DriveTRInfo;
    }
.end annotation


# instance fields
.field private orders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/ddrive/net/http/response/DriveTRResponse$DriveTRInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public getOrders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/didi/ddrive/net/http/response/DriveTRResponse$DriveTRInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11
    iget-object v0, p0, Lcom/didi/ddrive/net/http/response/DriveTRResponse;->orders:Ljava/util/List;

    return-object v0
.end method

.method public setOrders(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/ddrive/net/http/response/DriveTRResponse$DriveTRInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, orders:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/http/response/DriveTRResponse$DriveTRInfo;>;"
    iput-object p1, p0, Lcom/didi/ddrive/net/http/response/DriveTRResponse;->orders:Ljava/util/List;

    .line 16
    return-void
.end method
