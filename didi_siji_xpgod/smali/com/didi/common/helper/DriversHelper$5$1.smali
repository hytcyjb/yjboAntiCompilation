.class Lcom/didi/common/helper/DriversHelper$5$1;
.super Ljava/lang/Thread;
.source "DriversHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/DriversHelper$5;->onNearDriversMsgReceived(ILcom/didi/common/model/NearDrivers;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/helper/DriversHelper$5;

.field final synthetic val$nearDrivers:Lcom/didi/common/model/NearDrivers;

.field final synthetic val$productId:I


# direct methods
.method constructor <init>(Lcom/didi/common/helper/DriversHelper$5;ILcom/didi/common/model/NearDrivers;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/didi/common/helper/DriversHelper$5$1;->this$0:Lcom/didi/common/helper/DriversHelper$5;

    iput p2, p0, Lcom/didi/common/helper/DriversHelper$5$1;->val$productId:I

    iput-object p3, p0, Lcom/didi/common/helper/DriversHelper$5$1;->val$nearDrivers:Lcom/didi/common/model/NearDrivers;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 225
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 226
    iget v0, p0, Lcom/didi/common/helper/DriversHelper$5$1;->val$productId:I

    iget-object v1, p0, Lcom/didi/common/helper/DriversHelper$5$1;->val$nearDrivers:Lcom/didi/common/model/NearDrivers;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/didi/common/helper/DriversHelper;->updateNearDrivers(ILcom/didi/common/model/NearDrivers;Z)V

    .line 228
    return-void
.end method
