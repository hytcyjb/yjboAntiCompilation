.class final Lcom/didi/common/util/ImageUtil$2;
.super Lthread/Job;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/util/ImageUtil;->save(Ljava/lang/String;Ljava/lang/String;Lcom/didi/frame/business/Business;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$business:Lcom/didi/frame/business/Business;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/didi/frame/business/Business;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/didi/common/util/ImageUtil$2;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/didi/common/util/ImageUtil$2;->val$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/didi/common/util/ImageUtil$2;->val$business:Lcom/didi/frame/business/Business;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected run()V
    .locals 3

    .prologue
    .line 1115
    iget-object v1, p0, Lcom/didi/common/util/ImageUtil$2;->val$url:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/ImageUtil;->fetchBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1116
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/didi/common/util/ImageUtil$2;->val$fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/common/util/ImageUtil$2;->val$business:Lcom/didi/frame/business/Business;

    invoke-static {v0, v1, v2}, Lcom/didi/common/util/ImageUtil;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/didi/frame/business/Business;)V

    .line 1117
    return-void
.end method
