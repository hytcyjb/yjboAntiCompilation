.class Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$1;
.super Ljava/lang/Object;
.source "EditPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->initAtUserView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 108
    new-instance v0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;-><init>()V

    .line 109
    .local v0, subPage:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->setPlatform(Lcn/sharesdk/framework/Platform;)V

    .line 110
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;

    #getter for: Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->access$000(Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->showForResult(Landroid/content/Context;Landroid/content/Intent;Lcn/sharesdk/framework/FakeActivity;)V

    .line 111
    return-void
.end method
