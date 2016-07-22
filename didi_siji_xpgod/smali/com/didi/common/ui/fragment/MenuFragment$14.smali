.class Lcom/didi/common/ui/fragment/MenuFragment$14;
.super Ljava/lang/Object;
.source "MenuFragment.java"

# interfaces
.implements Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/MenuFragment;->loadActivityImg()V
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
    .line 737
    iput-object p1, p0, Lcom/didi/common/ui/fragment/MenuFragment$14;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    const/4 v3, 0x0

    .line 741
    if-eqz p1, :cond_0

    .line 742
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment$14;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #getter for: Lcom/didi/common/ui/fragment/MenuFragment;->imgviewBussiness:Lx/ImageView;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/MenuFragment;->access$1100(Lcom/didi/common/ui/fragment/MenuFragment;)Lx/ImageView;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lutil/ImageUtil;->round(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 743
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment$14;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #getter for: Lcom/didi/common/ui/fragment/MenuFragment;->imgviewBussiness:Lx/ImageView;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/MenuFragment;->access$1100(Lcom/didi/common/ui/fragment/MenuFragment;)Lx/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lx/ImageView;->setVisibility(I)V

    .line 744
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment$14;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    #getter for: Lcom/didi/common/ui/fragment/MenuFragment;->imgBottom:Lx/ImageView;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/MenuFragment;->access$1200(Lcom/didi/common/ui/fragment/MenuFragment;)Lx/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    .line 745
    const-string v0, "pxxmenu_banner_ck"

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 747
    :cond_0
    return-void
.end method
