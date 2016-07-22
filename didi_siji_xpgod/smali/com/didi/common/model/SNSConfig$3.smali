.class Lcom/didi/common/model/SNSConfig$3;
.super Ljava/lang/Object;
.source "SNSConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/model/SNSConfig;->postLoaded(Landroid/graphics/Bitmap;Lcom/didi/common/model/SNSConfig$ImageLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/model/SNSConfig;

.field final synthetic val$b:Landroid/graphics/Bitmap;

.field final synthetic val$l:Lcom/didi/common/model/SNSConfig$ImageLoadListener;


# direct methods
.method constructor <init>(Lcom/didi/common/model/SNSConfig;Landroid/graphics/Bitmap;Lcom/didi/common/model/SNSConfig$ImageLoadListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/didi/common/model/SNSConfig$3;->this$0:Lcom/didi/common/model/SNSConfig;

    iput-object p2, p0, Lcom/didi/common/model/SNSConfig$3;->val$b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/didi/common/model/SNSConfig$3;->val$l:Lcom/didi/common/model/SNSConfig$ImageLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/didi/common/model/SNSConfig$3;->this$0:Lcom/didi/common/model/SNSConfig;

    iget-object v1, p0, Lcom/didi/common/model/SNSConfig$3;->val$b:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/didi/common/model/SNSConfig;->bitmap:Landroid/graphics/Bitmap;

    .line 144
    iget-object v0, p0, Lcom/didi/common/model/SNSConfig$3;->val$l:Lcom/didi/common/model/SNSConfig$ImageLoadListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/didi/common/model/SNSConfig$3;->val$l:Lcom/didi/common/model/SNSConfig$ImageLoadListener;

    iget-object v1, p0, Lcom/didi/common/model/SNSConfig$3;->val$b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/didi/common/model/SNSConfig$ImageLoadListener;->onLoad(Landroid/graphics/Bitmap;)V

    .line 146
    :cond_0
    return-void
.end method
