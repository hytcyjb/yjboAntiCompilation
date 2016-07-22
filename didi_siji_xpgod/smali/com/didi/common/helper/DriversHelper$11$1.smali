.class Lcom/didi/common/helper/DriversHelper$11$1;
.super Lthread/Job;
.source "DriversHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/DriversHelper$11;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/DriveAroundResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/helper/DriversHelper$11;


# direct methods
.method constructor <init>(Lcom/didi/common/helper/DriversHelper$11;)V
    .locals 0
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/didi/common/helper/DriversHelper$11$1;->this$0:Lcom/didi/common/helper/DriversHelper$11;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected run()V
    .locals 4

    .prologue
    .line 595
    iget-object v0, p0, Lcom/didi/common/helper/DriversHelper$11$1;->this$0:Lcom/didi/common/helper/DriversHelper$11;

    iget-object v0, v0, Lcom/didi/common/helper/DriversHelper$11;->val$lat:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/didi/common/helper/DriversHelper$11$1;->this$0:Lcom/didi/common/helper/DriversHelper$11;

    iget-object v2, v2, Lcom/didi/common/helper/DriversHelper$11;->val$lng:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    #calls: Lcom/didi/common/helper/DriversHelper;->showDDriveDriversOnMap(DD)V
    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DriversHelper;->access$600(DD)V

    .line 596
    #calls: Lcom/didi/common/helper/DriversHelper;->upDateMyMarker()V
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->access$100()V

    .line 597
    return-void
.end method
