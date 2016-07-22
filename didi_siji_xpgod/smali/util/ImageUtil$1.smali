.class final Lutil/ImageUtil$1;
.super Ljava/lang/Thread;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutil/ImageUtil;->revise(Landroid/graphics/Bitmap;IIIZZLutil/ImageUtil$ImageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$height:I

.field final synthetic val$listener:Lutil/ImageUtil$ImageListener;

.field final synthetic val$needCrop:Z

.field final synthetic val$needScale:Z

.field final synthetic val$radius:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;IIIZZLutil/ImageUtil$ImageListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lutil/ImageUtil$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Lutil/ImageUtil$1;->val$width:I

    iput p3, p0, Lutil/ImageUtil$1;->val$height:I

    iput p4, p0, Lutil/ImageUtil$1;->val$radius:I

    iput-boolean p5, p0, Lutil/ImageUtil$1;->val$needCrop:Z

    iput-boolean p6, p0, Lutil/ImageUtil$1;->val$needScale:Z

    iput-object p7, p0, Lutil/ImageUtil$1;->val$listener:Lutil/ImageUtil$ImageListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 635
    iget-object v0, p0, Lutil/ImageUtil$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lutil/ImageUtil$1;->val$width:I

    iget v2, p0, Lutil/ImageUtil$1;->val$height:I

    iget v3, p0, Lutil/ImageUtil$1;->val$radius:I

    iget-boolean v4, p0, Lutil/ImageUtil$1;->val$needCrop:Z

    iget-boolean v5, p0, Lutil/ImageUtil$1;->val$needScale:Z

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lutil/ImageUtil;->revise(Landroid/graphics/Bitmap;IIIZZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lutil/ImageUtil$1;->mBitmap:Landroid/graphics/Bitmap;

    .line 637
    new-instance v0, Lutil/ImageUtil$1$1;

    invoke-direct {v0, p0}, Lutil/ImageUtil$1$1;-><init>(Lutil/ImageUtil$1;)V

    invoke-static {v0}, Lutil/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 646
    return-void
.end method
