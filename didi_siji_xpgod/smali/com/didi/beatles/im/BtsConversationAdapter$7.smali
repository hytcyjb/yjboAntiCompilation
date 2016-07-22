.class Lcom/didi/beatles/im/BtsConversationAdapter$7;
.super Ljava/lang/Object;
.source "BtsConversationAdapter.java"

# interfaces
.implements Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/im/BtsConversationAdapter;->setHeadLayout(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMUser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

.field final synthetic val$viewHolder:Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/didi/beatles/im/BtsConversationAdapter;Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/didi/beatles/im/BtsConversationAdapter$7;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    iput-object p2, p0, Lcom/didi/beatles/im/BtsConversationAdapter$7;->val$viewHolder:Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 511
    if-eqz p1, :cond_0

    .line 512
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter$7;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    invoke-static {p1}, Lutil/ImageUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/didi/beatles/im/BtsConversationAdapter;->passengerHeadImage:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$902(Lcom/didi/beatles/im/BtsConversationAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 513
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter$7;->val$viewHolder:Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;

    iget-object v0, v0, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->head:Landroid/widget/ImageView;

    invoke-static {p1}, Lutil/ImageUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 514
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter$7;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/didi/beatles/im/BtsConversationAdapter;->loadingPasssengerHead:Z
    invoke-static {v0, v1}, Lcom/didi/beatles/im/BtsConversationAdapter;->access$1002(Lcom/didi/beatles/im/BtsConversationAdapter;Z)Z

    .line 515
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter$7;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    invoke-virtual {v0}, Lcom/didi/beatles/im/BtsConversationAdapter;->notifyDataSetChanged()V

    .line 517
    :cond_0
    return-void
.end method
