.class Lcom/didi/car/model/CarSNSConfig$3;
.super Ljava/lang/Object;
.source "CarSNSConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/model/CarSNSConfig;->postLoaded(Landroid/graphics/Bitmap;Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/model/CarSNSConfig;

.field final synthetic val$b:Landroid/graphics/Bitmap;

.field final synthetic val$l:Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;


# direct methods
.method constructor <init>(Lcom/didi/car/model/CarSNSConfig;Landroid/graphics/Bitmap;Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/didi/car/model/CarSNSConfig$3;->this$0:Lcom/didi/car/model/CarSNSConfig;

    iput-object p2, p0, Lcom/didi/car/model/CarSNSConfig$3;->val$b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/didi/car/model/CarSNSConfig$3;->val$l:Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/didi/car/model/CarSNSConfig$3;->this$0:Lcom/didi/car/model/CarSNSConfig;

    iget-object v1, p0, Lcom/didi/car/model/CarSNSConfig$3;->val$b:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/didi/car/model/CarSNSConfig;->bitmap:Landroid/graphics/Bitmap;

    .line 128
    iget-object v0, p0, Lcom/didi/car/model/CarSNSConfig$3;->val$l:Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/didi/car/model/CarSNSConfig$3;->val$l:Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;

    iget-object v1, p0, Lcom/didi/car/model/CarSNSConfig$3;->val$b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/didi/car/model/CarSNSConfig$ImageLoadListener;->onLoad(Landroid/graphics/Bitmap;)V

    .line 130
    :cond_0
    return-void
.end method
