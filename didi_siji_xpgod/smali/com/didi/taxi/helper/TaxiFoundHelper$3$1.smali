.class Lcom/didi/taxi/helper/TaxiFoundHelper$3$1;
.super Ljava/lang/Object;
.source "TaxiFoundHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/helper/TaxiFoundHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/helper/TaxiFoundHelper$3;

.field final synthetic val$fBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/didi/taxi/helper/TaxiFoundHelper$3;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/didi/taxi/helper/TaxiFoundHelper$3$1;->this$0:Lcom/didi/taxi/helper/TaxiFoundHelper$3;

    iput-object p2, p0, Lcom/didi/taxi/helper/TaxiFoundHelper$3$1;->val$fBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiFoundHelper$3$1;->this$0:Lcom/didi/taxi/helper/TaxiFoundHelper$3;

    iget-object v0, v0, Lcom/didi/taxi/helper/TaxiFoundHelper$3;->val$callback:Lcom/didi/taxi/helper/TaxiFoundHelper$ImageCallback;

    iget-object v1, p0, Lcom/didi/taxi/helper/TaxiFoundHelper$3$1;->val$fBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/didi/taxi/helper/TaxiFoundHelper$ImageCallback;->onLoaded(Landroid/graphics/Bitmap;)V

    .line 79
    return-void
.end method
