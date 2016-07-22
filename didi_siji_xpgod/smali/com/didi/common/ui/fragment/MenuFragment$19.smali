.class Lcom/didi/common/ui/fragment/MenuFragment$19;
.super Ljava/lang/Object;
.source "MenuFragment.java"

# interfaces
.implements Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/MenuFragment;->setGameLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/MenuFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/MenuFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 957
    iput-object p1, p0, Lcom/didi/common/ui/fragment/MenuFragment$19;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 961
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment$19;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #getter for: Lcom/didi/common/ui/fragment/MenuFragment;->imgGame:Lx/ImageView;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/MenuFragment;->access$1600(Lcom/didi/common/ui/fragment/MenuFragment;)Lx/ImageView;

    move-result-object v0

    const/16 v1, 0x2d

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lutil/ImageUtil;->round(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 962
    return-void
.end method
