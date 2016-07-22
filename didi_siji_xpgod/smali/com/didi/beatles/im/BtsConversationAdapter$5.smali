.class Lcom/didi/beatles/im/BtsConversationAdapter$5;
.super Ljava/lang/Object;
.source "BtsConversationAdapter.java"

# interfaces
.implements Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/im/BtsConversationAdapter;->setMessageLayout(Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;Lcom/didi/im/model/IMChatRecord;Lcom/didi/im/model/IMUser;I)V
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
    .line 433
    iput-object p1, p0, Lcom/didi/beatles/im/BtsConversationAdapter$5;->this$0:Lcom/didi/beatles/im/BtsConversationAdapter;

    iput-object p2, p0, Lcom/didi/beatles/im/BtsConversationAdapter$5;->val$viewHolder:Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 437
    if-eqz p1, :cond_0

    .line 438
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationAdapter$5;->val$viewHolder:Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;

    iget-object v0, v0, Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;->imgMsg:Lx/ImageView;

    invoke-virtual {v0, p1}, Lx/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 440
    :cond_0
    return-void
.end method
