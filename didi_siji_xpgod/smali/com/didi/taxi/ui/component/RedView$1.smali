.class Lcom/didi/taxi/ui/component/RedView$1;
.super Ljava/lang/Object;
.source "RedView.java"

# interfaces
.implements Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/RedView;->getImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/component/RedView;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/RedView;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/didi/taxi/ui/component/RedView$1;->this$0:Lcom/didi/taxi/ui/component/RedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 102
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 103
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/didi/taxi/ui/component/RedView$1;->this$0:Lcom/didi/taxi/ui/component/RedView;

    #setter for: Lcom/didi/taxi/ui/component/RedView;->mDraw:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v0}, Lcom/didi/taxi/ui/component/RedView;->access$002(Lcom/didi/taxi/ui/component/RedView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 104
    return-void
.end method
