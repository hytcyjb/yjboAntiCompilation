.class Lcom/didi/im/adapter/ConversationAdapter$5;
.super Ljava/lang/Object;
.source "ConversationAdapter.java"

# interfaces
.implements Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/im/adapter/ConversationAdapter;->setMessageLayout(Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;Lcom/didi/im/model/IMUser;I)V
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
    .line 405
    iput-object p1, p0, Lcom/didi/im/adapter/ConversationAdapter$5;->this$0:Lcom/didi/im/adapter/ConversationAdapter;

    iput-object p2, p0, Lcom/didi/im/adapter/ConversationAdapter$5;->val$viewHolder:Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 409
    if-eqz p1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/didi/im/adapter/ConversationAdapter$5;->val$viewHolder:Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;

    iget-object v0, v0, Lcom/didi/im/adapter/ConversationAdapter$ViewHolder;->imgMsg:Lx/ImageView;

    invoke-virtual {v0, p1}, Lx/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 412
    :cond_0
    return-void
.end method
