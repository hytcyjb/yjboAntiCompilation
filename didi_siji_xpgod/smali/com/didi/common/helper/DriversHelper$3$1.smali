.class Lcom/didi/common/helper/DriversHelper$3$1;
.super Ljava/lang/Thread;
.source "DriversHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/DriversHelper$3;->onFinish(Lcom/didi/common/model/NearDrivers;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/helper/DriversHelper$3;

.field final synthetic val$nearDrivers:Lcom/didi/common/model/NearDrivers;


# direct methods
.method constructor <init>(Lcom/didi/common/helper/DriversHelper$3;Lcom/didi/common/model/NearDrivers;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/didi/common/helper/DriversHelper$3$1;->this$0:Lcom/didi/common/helper/DriversHelper$3;

    iput-object p2, p0, Lcom/didi/common/helper/DriversHelper$3$1;->val$nearDrivers:Lcom/didi/common/model/NearDrivers;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 192
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 193
    iget-object v1, p0, Lcom/didi/common/helper/DriversHelper$3$1;->val$nearDrivers:Lcom/didi/common/model/NearDrivers;

    iget v0, v1, Lcom/didi/common/model/NearDrivers;->productId:I

    .line 194
    .local v0, productId:I
    iget-object v1, p0, Lcom/didi/common/helper/DriversHelper$3$1;->val$nearDrivers:Lcom/didi/common/model/NearDrivers;

    iget-object v2, p0, Lcom/didi/common/helper/DriversHelper$3$1;->this$0:Lcom/didi/common/helper/DriversHelper$3;

    iget-boolean v2, v2, Lcom/didi/common/helper/DriversHelper$3;->val$needZoom:Z

    invoke-static {v0, v1, v2}, Lcom/didi/common/helper/DriversHelper;->updateNearDrivers(ILcom/didi/common/model/NearDrivers;Z)V

    .line 196
    return-void
.end method
