.class Lcom/didi/taxi/business/TaxiOrderLooper$4;
.super Ljava/util/TimerTask;
.source "TaxiOrderLooper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/business/TaxiOrderLooper;->myTask()Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/business/TaxiOrderLooper;


# direct methods
.method constructor <init>(Lcom/didi/taxi/business/TaxiOrderLooper;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/didi/taxi/business/TaxiOrderLooper$4;->this$0:Lcom/didi/taxi/business/TaxiOrderLooper;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 415
    sget v0, Lcom/didi/taxi/business/TaxiOrderLooper;->countDown:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/didi/taxi/business/TaxiOrderLooper;->countDown:I

    .line 416
    sget v0, Lcom/didi/taxi/business/TaxiOrderLooper;->countDown:I

    if-gtz v0, :cond_0

    .line 417
    new-instance v0, Lcom/didi/taxi/business/TaxiOrderLooper$4$1;

    invoke-direct {v0, p0}, Lcom/didi/taxi/business/TaxiOrderLooper$4$1;-><init>(Lcom/didi/taxi/business/TaxiOrderLooper$4;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 425
    :cond_0
    return-void
.end method
