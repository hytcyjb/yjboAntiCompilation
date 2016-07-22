.class Lcn/sharesdk/onekeyshare/EditPage$5;
.super Ljava/lang/Object;
.source "EditPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/EditPage;->getAtLine(Ljava/lang/String;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/EditPage;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/EditPage;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/EditPage$5;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 435
    new-instance v1, Lcn/sharesdk/onekeyshare/FollowList;

    invoke-direct {v1}, Lcn/sharesdk/onekeyshare/FollowList;-><init>()V

    .line 436
    .local v1, subPage:Lcn/sharesdk/onekeyshare/FollowList;
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage$5;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/EditPage;->reqData:Ljava/util/HashMap;
    invoke-static {v2}, Lcn/sharesdk/onekeyshare/EditPage;->access$600(Lcn/sharesdk/onekeyshare/EditPage;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "platform"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, platform:Ljava/lang/String;
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/FollowList;->setPlatform(Lcn/sharesdk/framework/Platform;)V

    .line 438
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPage$5;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/EditPage;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcn/sharesdk/onekeyshare/EditPage;->access$900(Lcn/sharesdk/onekeyshare/EditPage;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPage$5;->this$0:Lcn/sharesdk/onekeyshare/EditPage;

    invoke-virtual {v1, v2, v3, v4}, Lcn/sharesdk/onekeyshare/FollowList;->showForResult(Landroid/content/Context;Landroid/content/Intent;Lcn/sharesdk/framework/FakeActivity;)V

    .line 439
    return-void
.end method
