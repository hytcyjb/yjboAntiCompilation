.class Lcom/didi/car/model/CarSNSConfig$1$1;
.super Ljava/lang/Object;
.source "CarSNSConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/model/CarSNSConfig$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/car/model/CarSNSConfig$1;


# direct methods
.method constructor <init>(Lcom/didi/car/model/CarSNSConfig$1;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/didi/car/model/CarSNSConfig$1$1;->this$1:Lcom/didi/car/model/CarSNSConfig$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/didi/car/model/CarSNSConfig$1$1;->this$1:Lcom/didi/car/model/CarSNSConfig$1;

    iget-object v0, v0, Lcom/didi/car/model/CarSNSConfig$1;->this$0:Lcom/didi/car/model/CarSNSConfig;

    iget-object v1, p0, Lcom/didi/car/model/CarSNSConfig$1$1;->this$1:Lcom/didi/car/model/CarSNSConfig$1;

    iget-object v1, v1, Lcom/didi/car/model/CarSNSConfig$1;->val$l:Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;

    #calls: Lcom/didi/car/model/CarSNSConfig;->loadPictureFromNet(Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;)V
    invoke-static {v0, v1}, Lcom/didi/car/model/CarSNSConfig;->access$100(Lcom/didi/car/model/CarSNSConfig;Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;)V

    .line 81
    return-void
.end method
