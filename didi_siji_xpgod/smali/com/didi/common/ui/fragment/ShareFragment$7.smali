.class Lcom/didi/common/ui/fragment/ShareFragment$7;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/ShareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/ShareFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/ShareFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/didi/common/ui/fragment/ShareFragment$7;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 509
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 6
    .parameter "arg0"
    .parameter "action"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p3, res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 462
    const-string v4, "users"

    invoke-virtual {p3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 463
    const-string v4, "users"

    invoke-virtual {p3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 464
    const-string v4, "users"

    invoke-virtual {p3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 466
    .local v3, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 467
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;

    invoke-direct {v2}, Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;-><init>()V

    .line 469
    .local v2, shareListItem:Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;
    const-string v4, "profile_image_url"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;->mUrl:Ljava/lang/String;

    .line 470
    const-string v4, "screen_name"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;->mName:Ljava/lang/String;

    .line 471
    const-string v4, "name"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;->mLinkName:Ljava/lang/String;

    .line 473
    iget-object v4, p0, Lcom/didi/common/ui/fragment/ShareFragment$7;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mSinaData:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/didi/common/ui/fragment/ShareFragment;->access$600(Lcom/didi/common/ui/fragment/ShareFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 475
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #shareListItem:Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;
    :cond_0
    iget-object v4, p0, Lcom/didi/common/ui/fragment/ShareFragment$7;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/didi/common/ui/fragment/ShareFragment;->access$1500(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/didi/common/ui/fragment/ShareFragment$7$2;

    invoke-direct {v5, p0}, Lcom/didi/common/ui/fragment/ShareFragment$7$2;-><init>(Lcom/didi/common/ui/fragment/ShareFragment$7;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 504
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_1
    :goto_1
    return-void

    .line 486
    :cond_2
    const/16 v4, 0x9

    if-ne p2, v4, :cond_3

    sget-object v4, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 487
    iget-object v4, p0, Lcom/didi/common/ui/fragment/ShareFragment$7;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/didi/common/ui/fragment/ShareFragment;->access$1500(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/didi/common/ui/fragment/ShareFragment$7$3;

    invoke-direct {v5, p0}, Lcom/didi/common/ui/fragment/ShareFragment$7$3;-><init>(Lcom/didi/common/ui/fragment/ShareFragment$7;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 495
    :cond_3
    const/4 v4, 0x1

    if-ne p2, v4, :cond_1

    .line 496
    iget-object v4, p0, Lcom/didi/common/ui/fragment/ShareFragment$7;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/didi/common/ui/fragment/ShareFragment;->access$1500(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/didi/common/ui/fragment/ShareFragment$7$4;

    invoke-direct {v5, p0}, Lcom/didi/common/ui/fragment/ShareFragment$7$4;-><init>(Lcom/didi/common/ui/fragment/ShareFragment$7;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 447
    const/16 v0, 0x9

    if-ne p2, v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment$7;->this$0:Lcom/didi/common/ui/fragment/ShareFragment;

    #getter for: Lcom/didi/common/ui/fragment/ShareFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/ShareFragment;->access$1500(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/didi/common/ui/fragment/ShareFragment$7$1;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/ShareFragment$7$1;-><init>(Lcom/didi/common/ui/fragment/ShareFragment$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 456
    :cond_0
    return-void
.end method
