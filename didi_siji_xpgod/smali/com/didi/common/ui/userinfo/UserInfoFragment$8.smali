.class Lcom/didi/common/ui/userinfo/UserInfoFragment$8;
.super Ljava/lang/Object;
.source "UserInfoFragment.java"

# interfaces
.implements Lcom/didi/common/ui/userinfo/BottomListMenu$ListMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/userinfo/UserInfoFragment;->editAvatar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/userinfo/UserInfoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$8;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/String;)V
    .locals 3
    .parameter "position"
    .parameter "itemStr"

    .prologue
    .line 457
    if-nez p1, :cond_1

    .line 458
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "output"

    iget-object v2, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$8;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/UserInfoFragment;->mAvatarOriginFile:Ljava/io/File;
    invoke-static {v2}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$1000(Lcom/didi/common/ui/userinfo/UserInfoFragment;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 460
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$8;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    const/16 v2, 0x3ee

    invoke-virtual {v1, v0, v2}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 467
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 462
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 463
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$8;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v0, v2}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
