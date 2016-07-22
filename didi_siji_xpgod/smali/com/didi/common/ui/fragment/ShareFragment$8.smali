.class Lcom/didi/common/ui/fragment/ShareFragment$8;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Lcom/didi/common/model/SNSConfig$ImageLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/ShareFragment;->invite(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/ShareFragment;

.field final synthetic val$friendString:Ljava/lang/String;

.field final synthetic val$site:I


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/ShareFragment;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/didi/common/ui/fragment/ShareFragment$8;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    iput-object p2, p0, Lcom/didi/common/ui/fragment/ShareFragment$8;->val$friendString:Ljava/lang/String;

    iput p3, p0, Lcom/didi/common/ui/fragment/ShareFragment$8;->val$site:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoad(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment$8;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment$8;->val$friendString:Ljava/lang/String;

    iget v2, p0, Lcom/didi/common/ui/fragment/ShareFragment$8;->val$site:I

    #calls: Lcom/didi/common/ui/fragment/ShareFragment;->send(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    invoke-static {v0, v1, p1, v2}, Lcom/didi/common/ui/fragment/ShareFragment;->access$1600(Lcom/didi/common/ui/fragment/ShareFragment;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 541
    return-void
.end method
