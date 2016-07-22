.class Lcom/didi/im/adapter/ConversationAdapter$6;
.super Ljava/lang/Object;
.source "ConversationAdapter.java"

# interfaces
.implements Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/im/adapter/ConversationAdapter;->setHeadLayout(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMUser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/im/adapter/ConversationAdapter;

.field final synthetic val$viewHolder:Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/didi/im/adapter/ConversationAdapter;Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/didi/im/adapter/ConversationAdapter$6;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    iput-object p2, p0, Lcom/didi/im/adapter/ConversationAdapter$6;->val$viewHolder:Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 456
    if-eqz p1, :cond_0

    .line 457
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter$6;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    invoke-static {p1}, Lutil/ImageUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/didi/im/adapter/ConversationAdapter;->driverHeadImage:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/didi/im/adapter/ConversationAdapter;->access$702(Lcom/didi/im/adapter/ConversationAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 459
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter$6;->val$viewHolder:Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;

    iget-object v0, v0, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->head:Landroid/widget/ImageView;

    invoke-static {p1}, Lutil/ImageUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 461
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter$6;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/didi/im/adapter/ConversationAdapter;->loadingDriverHead:Z
    invoke-static {v0, v1}, Lcom/didi/im/adapter/ConversationAdapter;->access$802(Lcom/didi/im/adapter/ConversationAdapter;Z)Z

    .line 462
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter$6;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    invoke-virtual {v0}, Lcom/didi/im/adapter/ConversationAdapter;->notifyDataSetChanged()V

    .line 464
    :cond_0
    return-void
.end method
