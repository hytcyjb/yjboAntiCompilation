.class Lcom/didi/car/ui/component/ShareTicketView$2;
.super Ljava/lang/Object;
.source "ShareTicketView.java"

# interfaces
.implements Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/component/ShareTicketView;->getWXFriendImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/component/ShareTicketView;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/component/ShareTicketView;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/didi/car/ui/component/ShareTicketView$2;->this$0:Lcom/didi/car/ui/component/ShareTicketView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 123
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gtz v1, :cond_1

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/didi/car/ui/component/ShareTicketView$2;->this$0:Lcom/didi/car/ui/component/ShareTicketView;

    invoke-virtual {v1}, Lcom/didi/car/ui/component/ShareTicketView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202a4

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 126
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 127
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/didi/car/ui/component/ShareTicketView$2;->this$0:Lcom/didi/car/ui/component/ShareTicketView;

    #setter for: Lcom/didi/car/ui/component/ShareTicketView;->mWXFriendDraw:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v0}, Lcom/didi/car/ui/component/ShareTicketView;->access$102(Lcom/didi/car/ui/component/ShareTicketView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 128
    return-void
.end method
