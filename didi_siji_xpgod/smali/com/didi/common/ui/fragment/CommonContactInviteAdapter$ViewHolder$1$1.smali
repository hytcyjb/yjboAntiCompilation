.class Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1$1;
.super Ljava/lang/Object;
.source "CommonContactInviteAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1$1;->this$2:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 95
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1$1;->this$2:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1;

    iget-object v1, v1, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1;->this$1:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;

    iget-object v1, v1, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mContact:Lcom/didi/common/database/Contact;

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1$1;->this$2:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1;

    iget-object v1, v1, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1;->this$1:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;

    iget-object v1, v1, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mContact:Lcom/didi/common/database/Contact;

    invoke-virtual {v1}, Lcom/didi/common/database/Contact;->getPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    .local v0, photo:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1$1;->this$2:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1;

    iget-object v1, v1, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1;->this$1:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;

    iget-object v1, v1, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mAvatar:Lx/ImageView;

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1$1;->this$2:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1;

    iget-object v2, v2, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1;->this$1:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;

    iget-object v2, v2, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->this$0:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;

    #getter for: Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->mDefaultBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->access$000(Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v0           #photo:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v1, v0}, Lx/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1$1;->this$2:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1;

    iget-object v1, v1, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1;->this$1:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;

    iget-object v1, v1, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->mAvatar:Lx/ImageView;

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1$1;->this$2:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1;

    iget-object v2, v2, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder$1;->this$1:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;

    iget-object v2, v2, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter$ViewHolder;->this$0:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;

    #getter for: Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->mDefaultBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->access$000(Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lx/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
