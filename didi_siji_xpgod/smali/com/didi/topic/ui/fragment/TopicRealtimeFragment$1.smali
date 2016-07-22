.class Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$1;
.super Ljava/lang/Object;
.source "TopicRealtimeFragment.java"

# interfaces
.implements Lcom/didi/common/ui/userinfo/BottomListMenu$ListMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->editAvatar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$1;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/String;)V
    .locals 3
    .parameter "position"
    .parameter "itemStr"

    .prologue
    .line 225
    if-nez p1, :cond_1

    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$1;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    invoke-static {}, Lcom/didi/common/config/DidiFileConfig;->getPhotoOutputFile()Ljava/io/File;

    move-result-object v2

    #setter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mAvatarOriginFile:Ljava/io/File;
    invoke-static {v1, v2}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$802(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;Ljava/io/File;)Ljava/io/File;

    .line 228
    const-string v1, "output"

    iget-object v2, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$1;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    #getter for: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->mAvatarOriginFile:Ljava/io/File;
    invoke-static {v2}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$800(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 230
    iget-object v1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$1;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    const/16 v2, 0x3ee

    invoke-virtual {v1, v0, v2}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 237
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 232
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 233
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$1;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v0, v2}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
